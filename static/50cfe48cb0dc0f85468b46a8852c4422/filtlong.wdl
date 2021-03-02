version 1.0

task Filtlong {
  input {
    Boolean? keep_only_best
    Boolean? keep_only_percentage
    Boolean? min_length
    Boolean? min_mean_q
    Boolean? min_window_q
    Boolean? reference_assembly_fasta
    Boolean? one
    Boolean? two
    Boolean? length_weight
    Boolean? mean_q_weight
    Boolean? window_q_weight
    Boolean? trim
    Boolean? split
    Boolean? window_size
    Boolean? verbose
    String input_reads
  }
  command <<<
    filtlong \
      ~{input_reads} \
      ~{if (keep_only_best) then "-t" else ""} \
      ~{if (keep_only_percentage) then "-p" else ""} \
      ~{if (min_length) then "--min_length" else ""} \
      ~{if (min_mean_q) then "--min_mean_q" else ""} \
      ~{if (min_window_q) then "--min_window_q" else ""} \
      ~{if (reference_assembly_fasta) then "-a" else ""} \
      ~{if (one) then "-1" else ""} \
      ~{if (two) then "-2" else ""} \
      ~{if (length_weight) then "--length_weight" else ""} \
      ~{if (mean_q_weight) then "--mean_q_weight" else ""} \
      ~{if (window_q_weight) then "--window_q_weight" else ""} \
      ~{if (trim) then "--trim" else ""} \
      ~{if (split) then "--split" else ""} \
      ~{if (window_size) then "--window_size" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    keep_only_best: "[int], --target_bases [int]          keep only the best reads up to this many total bases"
    keep_only_percentage: "[float], --keep_percent [float]      keep only this percentage of the best reads (measured by bases)"
    min_length: "[int]                     minimum length threshold"
    min_mean_q: "[float]                   minimum mean quality threshold"
    min_window_q: "[float]                 minimum window quality threshold"
    reference_assembly_fasta: "[file], --assembly [file]            reference assembly in FASTA format"
    one: "[file], --illumina_1 [file]          reference Illumina reads in FASTQ format"
    two: "[file], --illumina_2 [file]          reference Illumina reads in FASTQ format"
    length_weight: "[float]                weight given to the length score (default: 1)"
    mean_q_weight: "[float]                weight given to the mean quality score (default: 1)"
    window_q_weight: "[float]              weight given to the window quality score (default: 1)"
    trim: "trim non-k-mer-matching bases from start/end of reads"
    split: "[split]                        split reads at this many (or more) consecutive non-k-mer-matching bases"
    window_size: "[int]                    size of sliding window used when measuring window quality (default: 250)"
    verbose: "verbose output to stderr with info for each read"
    input_reads: "input long reads to be filtered"
  }
  output {
    File out_stdout = stdout()
  }
}