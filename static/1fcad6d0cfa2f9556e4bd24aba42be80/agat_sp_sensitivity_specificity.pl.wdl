version 1.0

task AgatSpSensitivitySpecificitypl {
  input {
    Boolean? gff_one
    Boolean? gff_two
    File? outfile
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
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if (verbose_option_debug) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.5.1--pl526r35_0"
  }
  parameter_meta {
    gff_one: "Input GTF/GFF file 1."
    gff_two: "Input GTF/GFF file 2."
    outfile: "Output GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    verbose_option_debug: "Verbose option for debug purposes."
    agat_sp_sensitivity_specificity_do_tpl: "Description:"
    tn: "Sensitivity and Specificity will be computed for each feature types."
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}