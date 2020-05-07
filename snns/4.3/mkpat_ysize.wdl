version 1.0

task MkpatYsize {
  input {
    String? xsizeXsize
    String? ysizeYsize
  }
  command <<<
    mkpat ysize \
      ~{xsizeXsize} \
      ~{ysizeYsize}
  >>>
}