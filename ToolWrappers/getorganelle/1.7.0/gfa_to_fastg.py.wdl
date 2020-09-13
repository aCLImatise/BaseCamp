version 1.0

task GfaToFastgpy {
  input {
    Int gfatwofastgdotpy
  }
  command <<<
    gfa_to_fastg_py \
      ~{gfatwofastgdotpy}
  >>>
  parameter_meta {
    gfatwofastgdotpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}