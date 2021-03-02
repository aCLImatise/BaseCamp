version 1.0

task Bowtie2inspect {
  input {
    Boolean? large_index
    Boolean? debug
    Boolean? sanitized
    Boolean? verbose
    Int? across
    Boolean? names
    Boolean? summary
  }
  command <<<
    bowtie2_inspect \
      ~{if (large_index) then "--large-index" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (sanitized) then "--sanitized" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(across) then ("--across " +  '"' + across + '"') else ""} \
      ~{if (names) then "--names" else ""} \
      ~{if (summary) then "--summary" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bowtie2:2.4.2--py38h1c8e9b9_1"
  }
  parameter_meta {
    large_index: "force inspection of the 'large' index, even if a\\n'small' one is present."
    debug: "use the debug binary; slower, assertions enabled"
    sanitized: "use sanitized binary; slower, uses ASan and/or UBSan"
    verbose: "Verbose output (for debugging)"
    across: "Number of characters across in FASTA output (default: 60)"
    names: "Print reference sequence names only"
    summary: "Print summary incl. ref names, lengths, index properties"
  }
  output {
    File out_stdout = stdout()
  }
}