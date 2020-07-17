version 1.0

task MaskPrimers.pyBARCODE {
  input {
    String mask_primers_do_tpy
  }
  command <<<
    MaskPrimers.py BARCODE \
      ~{mask_primers_do_tpy}
  >>>
  parameter_meta {
    mask_primers_do_tpy: ""
  }
}