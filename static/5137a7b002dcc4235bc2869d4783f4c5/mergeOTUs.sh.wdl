version 1.0

task MergeOTUssh {
  input {
    String in
  }
  command <<<
    mergeOTUs_sh \
      ~{in}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: ""
  }
  output {
    File out_stdout = stdout()
  }
}