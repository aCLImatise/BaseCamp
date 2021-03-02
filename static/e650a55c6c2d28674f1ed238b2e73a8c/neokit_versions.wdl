version 1.0

task NeokitVersions {
  input {
    String versions
  }
  command <<<
    neokit versions \
      ~{versions}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    versions: ""
  }
  output {
    File out_stdout = stdout()
  }
}