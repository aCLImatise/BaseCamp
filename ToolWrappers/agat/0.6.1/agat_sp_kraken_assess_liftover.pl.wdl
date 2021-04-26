version 1.0

task AgatSpKrakenAssessLiftoverpl {
  input {
    Boolean? gtf
    Int? threshold
    String? verbose
    File? outfile
    String agat_sp_kraken_assess_lift_coverage_do_tpl
  }
  command <<<
    agat_sp_kraken_assess_liftover_pl \
      ~{agat_sp_kraken_assess_lift_coverage_do_tpl} \
      ~{if (gtf) then "-gtf" else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.6.1--pl5262r35hdfd78af_0"
  }
  parameter_meta {
    gtf: "Input gtf file produced by Kraken."
    threshold: "Gene mapping percentage over which a gene must be reported. By\\ndefault the value is 0."
    verbose: "Verbose information."
    outfile: "Output GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    agat_sp_kraken_assess_lift_coverage_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}