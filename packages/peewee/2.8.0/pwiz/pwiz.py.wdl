version 1.0

task Pwizpy {
  input {
    String database_name
  }
  command <<<
    pwiz_py \
      ~{database_name}
  >>>
  parameter_meta {
    database_name: ""
  }
  output {
    File out_stdout = stdout()
  }
}