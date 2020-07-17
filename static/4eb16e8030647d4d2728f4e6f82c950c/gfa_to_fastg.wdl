version 1.0

task GfaToFastg.py {
  input {
    String gfatwofastgdotpy
  }
  command <<<
    gfa_to_fastg.py \
      ~{gfatwofastgdotpy}
  >>>
  parameter_meta {
    gfatwofastgdotpy: ""
  }
}