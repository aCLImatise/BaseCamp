version 1.0

task Mafjoin {
  input {
    Int sorted_file_two_dot_maf
  }
  command <<<
    maf_join \
      ~{sorted_file_two_dot_maf}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    sorted_file_two_dot_maf: ""
  }
  output {
    File out_stdout = stdout()
  }
}