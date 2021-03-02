version 1.0

task RemoveMateOverlap {
  input {
    String? opts
  }
  command <<<
    removeMateOverlap \
      ~{opts}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    opts: ""
  }
  output {
    File out_stdout = stdout()
  }
}