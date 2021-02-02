version 1.0

task EaselFilterMaxid {
  input {
    Boolean? options
  }
  command <<<
    easel filter maxid \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    options: ""
  }
  output {
    File out_stdout = stdout()
  }
}