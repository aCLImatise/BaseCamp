version 1.0

task Bowtieinspect {
  input {
    Boolean? large_index
    Int? across
    Boolean? names
    Boolean? summary
    Boolean? e_bwt_ref
    Boolean? verbose
  }
  command <<<
    bowtie_inspect \
      ~{if (large_index) then "--large-index" else ""} \
      ~{if defined(across) then ("--across " +  '"' + across + '"') else ""} \
      ~{if (names) then "--names" else ""} \
      ~{if (summary) then "--summary" else ""} \
      ~{if (e_bwt_ref) then "--ebwt-ref" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bowtie:1.3.0--py38hed8969a_1"
  }
  parameter_meta {
    large_index: "force inspection of the 'large' index, even if a\\n'small' one is present."
    across: "Number of characters across in FASTA output (default: 60)"
    names: "Print reference sequence names only"
    summary: "Print summary incl. ref names, lengths, index properties"
    e_bwt_ref: "Reconstruct reference from ebwt (slow, preserves colors)"
    verbose: "Verbose output (for debugging)"
  }
  output {
    File out_stdout = stdout()
  }
}