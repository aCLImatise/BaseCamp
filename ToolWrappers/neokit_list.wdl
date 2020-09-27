version 1.0

task NeokitList {
  input {
    String list
  }
  command <<<
    neokit list \
      ~{list}
  >>>
  parameter_meta {
    list: ""
  }
  output {
    File out_stdout = stdout()
  }
}