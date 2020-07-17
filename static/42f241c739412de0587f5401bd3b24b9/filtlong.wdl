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
      ~{true="-t" false="" keep_only_best} \
      ~{true="-p" false="" keep_only_percentage} \
      ~{true="--min_length" false="" min_length} \
      ~{true="--min_mean_q" false="" min_mean_q} \
      ~{true="--min_window_q" false="" min_window_q} \
      ~{true="-a" false="" reference_assembly_fasta} \
      ~{true="-1" false="" one} \
      ~{true="-2" false="" two} \
      ~{true="--length_weight" false="" length_weight} \
      ~{true="--mean_q_weight" false="" mean_q_weight} \
      ~{true="--window_q_weight" false="" window_q_weight} \
      ~{true="--trim" false="" trim} \
      ~{true="--split" false="" split} \
      ~{true="--window_size" false="" window_size} \
      ~{true="--verbose" false="" verbose}
  >>>
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
}