version 1.0

task AgatSpSensitivitySpecificitypl {
  input {
    Boolean? gff_one
    Boolean? gff_two
    File? _output_
    Boolean? verbose_option_debug
    String agat_sp_sensitivity_specificity_do_tpl
    String tn
  }
  command <<<
    agat_sp_sensitivity_specificity_pl \
      ~{agat_sp_sensitivity_specificity_do_tpl} \
      ~{tn} \
      ~{if (gff_one) then "-gff1" else ""} \
      ~{if (gff_two) then "-gff2" else ""} \
      ~{if (_output_) then "-o" else ""} \
      ~{if (verbose_option_debug) then "-v" else ""}
  >>>
  parameter_meta {
    gff_one: "Input GTF/GFF file 1."
    gff_two: "Input GTF/GFF file 2."
    _output_: ", --output , --out or --outfile\\nOutput GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    verbose_option_debug: "Verbose option for debug purposes."
    agat_sp_sensitivity_specificity_do_tpl: "Description:"
    tn: "Sensitivity and Specificity will be computed for each feature types."
  }
  output {
    File out_stdout = stdout()
    File out__output_ = "${in__output_}"
  }
}