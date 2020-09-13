version 1.0

task NeokitVersions {
  input {
    String versions
  }
  command <<<
    neokit versions \
      ~{versions}
  >>>
  parameter_meta {
    versions: ""
  }
  output {
    File out_stdout = stdout()
  }
}