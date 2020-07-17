version 1.0

task Mkpat {
  input {
    String xsize
    String ysize
  }
  command <<<
    mkpat \
      ~{xsize} \
      ~{ysize}
  >>>
  parameter_meta {
    xsize: ""
    ysize: ""
  }
}