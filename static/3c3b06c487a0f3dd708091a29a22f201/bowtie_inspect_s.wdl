version 1.0

task Bowtieinspects {
  input {
    Int? across
    Boolean? names
    Boolean? summary
    Boolean? e_bwt_ref
    Boolean? verbose
    String bowtie_inspect
  }
  command <<<
    bowtie_inspect_s \
      ~{bowtie_inspect} \
      ~{if defined(across) then ("--across " +  '"' + across + '"') else ""} \
      ~{if (names) then "--names" else ""} \
      ~{if (summary) then "--summary" else ""} \
      ~{if (e_bwt_ref) then "--ebwt-ref" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    across: "Number of characters across in FASTA output (default: 60)"
    names: "Print reference sequence names only"
    summary: "Print summary incl. ref names, lengths, index properties"
    e_bwt_ref: "Reconstruct reference from ebwt (slow, preserves colors)"
    verbose: "Verbose output (for debugging)"
    bowtie_inspect: ""
  }
  output {
    File out_stdout = stdout()
  }
}