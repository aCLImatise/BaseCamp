version 1.0

task FastgToGfapy {
  input {
    Int fastgtwogfadotpy
  }
  command <<<
    fastg_to_gfa_py \
      ~{fastgtwogfadotpy}
  >>>
  parameter_meta {
    fastgtwogfadotpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}