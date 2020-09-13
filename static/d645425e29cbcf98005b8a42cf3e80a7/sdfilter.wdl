version 1.0

task Sdfilter {
  input {
    Boolean? f
  }
  command <<<
    sdfilter \
      ~{if (f) then "-f" else ""}
  >>>
  parameter_meta {
    f: ""
  }
  output {
    File out_stdout = stdout()
  }
}