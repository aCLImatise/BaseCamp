version 1.0

task Bowtie2inspects {
  input {
    Int? across
    Boolean? names
    Boolean? summary
    Boolean? verbose
    Int bowtie_two_inspect
  }
  command <<<
    bowtie2_inspect_s \
      ~{bowtie_two_inspect} \
      ~{if defined(across) then ("--across " +  '"' + across + '"') else ""} \
      ~{if (names) then "--names" else ""} \
      ~{if (summary) then "--summary" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/bowtie2:2.4.2--py38h1c8e9b9_1"
  }
  parameter_meta {
    across: "Number of characters across in FASTA output (default: 60)"
    names: "Print reference sequence names only"
    summary: "Print summary incl. ref names, lengths, index properties"
    verbose: "Verbose output (for debugging)"
    bowtie_two_inspect: ""
  }
  output {
    File out_stdout = stdout()
  }
}