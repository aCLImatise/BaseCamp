version 1.0

task MedakaStitch {
  input {
    Boolean? debug
    Boolean? quiet
    Array[String] regions
    Int? threads
    Boolean? no_fill_gaps
    String inputs
    String draft
    String output_fasta
  }
  command <<<
    medaka stitch \
      ~{inputs} \
      ~{draft} \
      ~{output_fasta} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(regions) then ("--regions " +  '"' + regions + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (no_fill_gaps) then "--no-fillgaps" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/medaka:1.3.2--py38h130def0_0"
  }
  parameter_meta {
    debug: "Verbose logging of debug information. (default: 20)"
    quiet: "Minimal logging; warnings only). (default: 20)"
    regions: "Genomic ref_names to process, or a bed file. (default:\\nNone)"
    threads: "Number of worker processes to use. (default: 1)"
    no_fill_gaps: "Don't fill gaps in consensus sequence with draft\\nsequence. (default: True)\\n"
    inputs: "Consensus .hdf files."
    draft: "Draft .fasta. Consensus gaps will be filled with\\nunpolished draft sequence to avoid contig\\nfragmentation."
    output_fasta: "Output .fasta."
  }
  output {
    File out_stdout = stdout()
  }
}