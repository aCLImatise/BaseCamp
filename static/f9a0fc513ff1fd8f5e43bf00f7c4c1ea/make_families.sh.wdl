version 1.0

task Makefamiliessh {
  input {
    Boolean? length_barcode_portion
    Boolean? length_invariant_ligation
  }
  command <<<
    make_families_sh \
      ~{if (length_barcode_portion) then "-t" else ""} \
      ~{if (length_invariant_ligation) then "-i" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    length_barcode_portion: ": The length of the barcode portion of each read. Default: 12"
    length_invariant_ligation: ": The length of the invariant (ligation) portion of each read. Default: 5"
  }
  output {
    File out_stdout = stdout()
  }
}