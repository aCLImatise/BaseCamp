version 1.0

task LynerStore {
  input {
    String? out
  }
  command <<<
    lyner store \
      ~{out}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out: ""
  }
  output {
    File out_stdout = stdout()
  }
}