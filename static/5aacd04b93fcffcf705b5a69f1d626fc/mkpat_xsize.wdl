version 1.0

task MkpatXsize {
  input {
    String? ysizeYsize
  }
  command <<<
    mkpat xsize \
      ~{ysizeYsize}
  >>>
}