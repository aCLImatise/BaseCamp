version 1.0

task Readgroupstats {
  input {
    File read_group_file
  }
  command <<<
    read_group_stats \
      ~{read_group_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    read_group_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}