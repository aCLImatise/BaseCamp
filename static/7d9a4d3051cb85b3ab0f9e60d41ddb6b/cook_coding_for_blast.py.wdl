version 1.0

task CookCodingForBlastpy {
  input {
    String fast_a_files
  }
  command <<<
    cook_coding_for_blast_py \
      ~{fast_a_files}
  >>>
  runtime {
    docker: "quay.io/biocontainers/getorganelle:1.7.4.1--pyh5e36f6f_0"
  }
  parameter_meta {
    fast_a_files: ""
  }
  output {
    File out_stdout = stdout()
  }
}