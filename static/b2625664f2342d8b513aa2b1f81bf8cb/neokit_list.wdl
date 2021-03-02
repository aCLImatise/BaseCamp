version 1.0

task NeokitList {
  input {
    String list
  }
  command <<<
    neokit list \
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