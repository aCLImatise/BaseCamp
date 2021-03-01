version 1.0

task SplitFile {
  input {
    File? head
    File? tail
    String source
    String lines_per_file
  }
  command <<<
    splitFile \
      ~{source} \
      ~{lines_per_file} \
      ~{if defined(head) then ("-head " +  '"' + head + '"') else ""} \
      ~{if defined(tail) then ("-tail " +  '"' + tail + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    head: "- put head in front of each output"
    tail: "- put tail at end of each output"
    source: ""
    lines_per_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}