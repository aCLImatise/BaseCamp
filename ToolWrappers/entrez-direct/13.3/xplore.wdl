version 1.0

task Xplore {
  input {
    Boolean? link
  }
  command <<<
    xplore \
      ~{if (link) then "-link" else ""}
  >>>
  parameter_meta {
    link: "-load\\n-save\\n-search\\n-version\\n-help"
  }
  output {
    File out_stdout = stdout()
  }
}