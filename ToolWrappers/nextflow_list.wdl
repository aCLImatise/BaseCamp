version 1.0

task NextflowList {
  input {
    String list
  }
  command <<<
    nextflow list \
      ~{list}
  >>>
  parameter_meta {
    list: ""
  }
  output {
    File out_stdout = stdout()
  }
}