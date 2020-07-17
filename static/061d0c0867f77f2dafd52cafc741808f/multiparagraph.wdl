version 1.0

task Multiparagraph.py {
  input {
    String? bam
    String? output_file_name
    String? reference_sequence
    Boolean? extended_output
    Int? max_events
    Int? min_length
    String? event_threads
    String? paragraph_threads
    Boolean? keep_scratch
    String? scratch_dir
    String? paragraph
    String? log_file
    Boolean? verbose
    Boolean? quiet
  }
  command <<<
    multiparagraph.py \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(reference_sequence) then ("--reference-sequence " +  '"' + reference_sequence + '"') else ""} \
      ~{true="--extended-output" false="" extended_output} \
      ~{if defined(max_events) then ("--max-events " +  '"' + max_events + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(event_threads) then ("--event-threads " +  '"' + event_threads + '"') else ""} \
      ~{if defined(paragraph_threads) then ("--paragraph-threads " +  '"' + paragraph_threads + '"') else ""} \
      ~{true="--keep-scratch" false="" keep_scratch} \
      ~{if defined(scratch_dir) then ("--scratch-dir " +  '"' + scratch_dir + '"') else ""} \
      ~{if defined(paragraph) then ("--paragraph " +  '"' + paragraph + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet}
  >>>
  parameter_meta {
    bam: "BAM file name"
    output_file_name: "Output file name"
    reference_sequence: "Reference FASTA"
    extended_output: "Run paragraph with -E 1"
    max_events: "Only do the first n events."
    min_length: "Minimum event length."
    event_threads: "Number of events to process in parallel."
    paragraph_threads: "Number of threads for parallel read processing."
    keep_scratch: "Do not delete temp files."
    scratch_dir: "Directory for temp files"
    paragraph: "Path to the paragraph executable"
    log_file: "Write logging information into file rather than to stderr"
    verbose: "Raise logging level from warning to info."
    quiet: "Set logging level to output errors only."
  }
}