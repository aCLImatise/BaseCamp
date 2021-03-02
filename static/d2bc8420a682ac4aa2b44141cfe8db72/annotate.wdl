version 1.0

task Annotate {
  input {
    String gap_file
    String data_file
  }
  command <<<
    annotate \
      ~{gap_file} \
      ~{data_file}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gap_file: ""
    data_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}