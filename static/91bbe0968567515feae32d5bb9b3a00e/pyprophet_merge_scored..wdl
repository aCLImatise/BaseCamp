version 1.0

task PyprophetMergeScored {
  input {
    String py_prophet
    String merge
    String? in_files
  }
  command <<<
    pyprophet merge scored_ \
      ~{py_prophet} \
      ~{merge} \
      ~{in_files}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pyprophet:2.1.10--py38h0213d0e_0"
  }
  parameter_meta {
    py_prophet: ""
    merge: ""
    in_files: ""
  }
  output {
    File out_stdout = stdout()
  }
}