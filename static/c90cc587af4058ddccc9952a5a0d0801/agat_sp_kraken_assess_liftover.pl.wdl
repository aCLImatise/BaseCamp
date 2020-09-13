version 1.0

task AgatSpKrakenAssessLiftoverpl {
  input {
    Boolean? gff
    Int? threshold
    String? verbose
    File? _output_
    File? gtf
    String agat_sp_kraken_assess_lift_coverage_do_tpl
  }
  command <<<
    agat_sp_kraken_assess_liftover_pl \
      ~{agat_sp_kraken_assess_lift_coverage_do_tpl} \
      ~{if (gff) then "-gff" else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if (_output_) then "-o" else ""} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""}
  >>>
  parameter_meta {
    gff: "Input gtf file produced by Kraken."
    threshold: "Gene mapping percentage over which a gene must be reported. By\\ndefault the value is 0."
    verbose: "Verbose information."
    _output_: ", --output , --out or --outfile\\nOutput GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    gtf: ""
    agat_sp_kraken_assess_lift_coverage_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out__output_ = "${in__output_}"
  }
}