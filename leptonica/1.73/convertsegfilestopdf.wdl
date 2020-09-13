version 1.0

task Convertsegfilestopdf {
  input {
    String where
  }
  command <<<
    convertsegfilestopdf \
      ~{where}
  >>>
  parameter_meta {
    where: "pagedir:  input directory for image files\\npagesubstr:  Use 'allfiles' to convert all files\\nin the directory\\nmaskdir:  input directory for mask files;\\nuse 'skip' to skip\\nmasksubstr:  Use 'allfiles' to convert all files\\nin the directory; 'skip' to skip\\nres:  Input resolution of each image;\\nassumed to all be the same\\ntype: compression used for non-image regions:\\n0: default (G4 encoding)\\n1: JPEG encoding\\n2: G4 encoding\\n3: PNG encoding\\nthresh:  threshold for binarization; use 0 for default\\nboxaafile: Optional file of 'image' regions within\\neach page.  This contains a boxa for each\\npage, consisting of a set of regions.\\nUse 'skip' to skip.\\nscalefactor:  Use to scale down the image regions\\ntitle:  Use 'none' to omit\\nfileout:  Output pdf file\\n"
  }
  output {
    File out_stdout = stdout()
  }
}