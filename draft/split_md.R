require("tidyverse")
mdpath = r"(C:\Users\hmito\OneDrive\SkyDocuments\Task\2024ESJ運営部会\mddir\ESJ72_draft.md)"
lines = readr::read_lines(mdpath)

path = r"(C:\Users\hmito\OneDrive\SkyDocuments\Task\2024ESJ運営部会\mddir\out)"
at = hmRLib::file.at(path)
#dir.create(path,showWarnings = FALSE, recursive = TRUE)

fout = NULL
dir = NULL
file = NULL
for(line.no in 1:length(lines)){
  line = lines[line.no]
  if(str_detect(line, "^#\\s.+")){
    dir = str_extract(line,"^#\\s(.+)",1)
    dir.create(at(dir),showWarnings = FALSE, recursive = TRUE)
    file = NULL
    if(!is.null(fout)){
      fout(close=TRUE)
      fout = NULL
    }
  }else if(str_detect(line, "^##\\s.+")){
    file = str_extract(line,"^##\\s(.+)",1)
    file = str_remove(file,"<span[^>]*>")
    file = str_remove(file,"</span>")
    if(!is.null(fout)){
      fout(close=TRUE)
      fout = NULL
    }
    fout = hmRLib::file.fout(at("%s/%s.md",dir,file))
    fout("# %s/%s",dir,file)
  }else{
    if(is.null(fout)){
      if(line != "")warning(sprintf("Line %d Unknonw Line",line.no)) 
    }else{
      line = stringr::str_replace(line, "^##","#")
      fout(line)
    }
  }
}
if(!is.null(fout)){
  fout(close=TRUE)
  fout = NULL
}
