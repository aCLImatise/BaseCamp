version 1.0

task Font2cFontname {
  input {
    Boolean? nostringval
  }
  command <<<
    font2c fontname \
      ~{if (nostringval) then "--nostringval--" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    nostringval: "cfile   (--help)   (w)"
  }
  output {
    File out_stdout = stdout()
  }
}