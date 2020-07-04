version 1.0

task AgatSpKrakenAssessLiftover.pl {
  input {
    Boolean? gff
    String? threshold
    String? verbose
    Boolean? _output_
    String? gtf
    String agat_sp_kraken_assess_lift_coverage
  }
  command <<<
    agat_sp_kraken_assess_liftover.pl \
      ~{agat_sp_kraken_assess_lift_coverage} \
      ~{true="-gff" false="" gff} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{true="-o" false="" _output_} \
      ~{if defined(gtf) then ("--gtf " +  '"' + gtf + '"') else ""}
  >>>
  parameter_meta {
    gff: "Input gtf file produced by Kraken."
    threshold: "Gene mapping percentage over which a gene must be reported. By default the value is 0."
    verbose: "Verbose information."
    _output_: ", --output , --out or --outfile Output GFF file. If no output file is specified, the output will be written to STDOUT."
    gtf: ""
    agat_sp_kraken_assess_lift_coverage: ""
  }
}