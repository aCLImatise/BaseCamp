version 1.0

task MaskPrimerspyPRIMER {
  input {
    String mask_primers_do_tpy
  }
  command <<<
    MaskPrimers_py PRIMER \
      ~{mask_primers_do_tpy}
  >>>
  parameter_meta {
    mask_primers_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}