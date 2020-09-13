version 1.0

task ReportAlignmentDifferences {
  input {
    String? genomic
    String? positions
    Boolean? aligns
    Int? min_match_identity
    Int? min_match_coverage
    Int? mer_size
    Int? ignore
    Int? num_threads
    Boolean? verbose
    Int? var_output
    String? o
    Int? i
    Int snapper_two
    String report_alignment_differences
  }
  command <<<
    reportAlignmentDifferences \
      ~{snapper_two} \
      ~{report_alignment_differences} \
      ~{if defined(genomic) then ("-genomic " +  '"' + genomic + '"') else ""} \
      ~{if defined(positions) then ("-positions " +  '"' + positions + '"') else ""} \
      ~{if (aligns) then "-aligns" else ""} \
      ~{if defined(min_match_identity) then ("-minmatchidentity " +  '"' + min_match_identity + '"') else ""} \
      ~{if defined(min_match_coverage) then ("-minmatchcoverage " +  '"' + min_match_coverage + '"') else ""} \
      ~{if defined(mer_size) then ("-mersize " +  '"' + mer_size + '"') else ""} \
      ~{if defined(ignore) then ("-ignore " +  '"' + ignore + '"') else ""} \
      ~{if defined(num_threads) then ("-numthreads " +  '"' + num_threads + '"') else ""} \
      ~{if (verbose) then "-verbose" else ""} \
      ~{if defined(var_output) then ("-output " +  '"' + var_output + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    genomic: ""
    positions: ""
    aligns: ""
    min_match_identity: ""
    min_match_coverage: ""
    mer_size: ""
    ignore: ""
    num_threads: ""
    verbose: ""
    var_output: ""
    o: ""
    i: ""
    snapper_two: "-queries Q.fasta"
    report_alignment_differences: "-i Q.best.sim4db"
  }
  output {
    File out_stdout = stdout()
  }
}