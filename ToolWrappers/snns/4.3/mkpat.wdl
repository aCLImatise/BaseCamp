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
  runtime {
    docker: "None"
  }
  parameter_meta {
    xsize: ""
    ysize: ""
  }
  output {
    File out_stdout = stdout()
  }
}