version 1.0

task MergeResultsOutfile {
  input {
    String merge_results
    Int in_one
    Int in_two
    String outfile
  }
  command <<<
    merge_results outfile \
      ~{merge_results} \
      ~{in_one} \
      ~{in_two} \
      ~{outfile}
  >>>
  runtime {
    docker: "quay.io/biocontainers/batch_brb:1.0.1--0"
  }
  parameter_meta {
    merge_results: ""
    in_one: ""
    in_two: ""
    outfile: ""
  }
  output {
    File out_stdout = stdout()
  }
}