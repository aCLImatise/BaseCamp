version 1.0

task GfaToFastgpy {
  input {
    Int gfatwofastgdotpy
  }
  command <<<
    gfa_to_fastg_py \
      ~{gfatwofastgdotpy}
  >>>
  runtime {
    docker: "quay.io/biocontainers/getorganelle:1.7.4.1--pyh5e36f6f_0"
  }
  parameter_meta {
    gfatwofastgdotpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}