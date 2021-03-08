version 1.0

task FastgToGfapy {
  input {
    Int fastgtwogfadotpy
  }
  command <<<
    fastg_to_gfa_py \
      ~{fastgtwogfadotpy}
  >>>
  runtime {
    docker: "quay.io/biocontainers/getorganelle:1.7.3.5--pyh3252c3a_0"
  }
  parameter_meta {
    fastgtwogfadotpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}