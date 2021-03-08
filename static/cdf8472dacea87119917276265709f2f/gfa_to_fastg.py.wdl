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
    docker: "quay.io/biocontainers/getorganelle:1.7.3.5--pyh3252c3a_0"
  }
  parameter_meta {
    gfatwofastgdotpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}