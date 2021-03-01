version 1.0

task NextflowbakList {
  input {
    String list
  }
  command <<<
    nextflow_bak list \
      ~{list}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    list: ""
  }
  output {
    File out_stdout = stdout()
  }
}