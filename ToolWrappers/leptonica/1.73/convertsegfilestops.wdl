version 1.0

task Convertsegfilestops {
  input {
    String where
  }
  command <<<
    convertsegfilestops \
      ~{where}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    where: "pagedir:  Input directory for page image files\\npagestr:  Substring for matching; use 'allfiles' to\\nconvert all files in the page directory\\npage_numpre:  Number of characters in page name before number\\nmaskdir:  Input directory for mask image files\\nmaskstr:  Substring for matching; use 'allfiles' to\\nconvert all files in the mask directory\\nmask_numpre:  Number of characters in mask name before number\\nnumpost:  Number of characters in name after number\\nmaxnum:  Only consider page numbers up to this value\\ntextscale:  Scale of text output relative to pixs\\nimagescale:  Scale of image output relative to pixs\\nthresh:  threshold for binarization; typically about\\n180; use 0 for default\\nfileout:  Output p file\\n"
  }
  output {
    File out_stdout = stdout()
  }
}