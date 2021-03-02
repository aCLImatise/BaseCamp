version 1.0

task MergeCounts {
  input {
    Int count_one
    Int count_two
  }
  command <<<
    mergeCounts \
      ~{count_one} \
      ~{count_two}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    count_one: ""
    count_two: ""
  }
  output {
    File out_stdout = stdout()
  }
}