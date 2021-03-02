version 1.0

task CoolerMergeOutput {
  input {
    String cooler
    String merge
    String out_path
    String? in_paths
  }
  command <<<
    cooler merge output_ \
      ~{cooler} \
      ~{merge} \
      ~{out_path} \
      ~{in_paths}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cooler:0.8.10--pyh3252c3a_0"
  }
  parameter_meta {
    cooler: ""
    merge: ""
    out_path: ""
    in_paths: ""
  }
  output {
    File out_stdout = stdout()
  }
}