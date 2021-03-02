version 1.0

task Multiparagraphpy {
  input {
    File? bam
    File? output_file_name
    String? reference_sequence
    Boolean? extended_output
    Int? max_events
    Int? min_length
    Int? event_threads
    Int? paragraph_threads
    Boolean? keep_scratch
    Directory? scratch_dir
    File? paragraph
    File? log_file
    Boolean? quiet
    String optional_arguments
    String stderr
  }
  command <<<
    multiparagraph_py \
      ~{optional_arguments} \
      ~{stderr} \
      ~{if defined(bam) then ("--bam " +  '"' + bam + '"') else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(reference_sequence) then ("--reference-sequence " +  '"' + reference_sequence + '"') else ""} \
      ~{if (extended_output) then "--extended-output" else ""} \
      ~{if defined(max_events) then ("--max-events " +  '"' + max_events + '"') else ""} \
      ~{if defined(min_length) then ("--min-length " +  '"' + min_length + '"') else ""} \
      ~{if defined(event_threads) then ("--event-threads " +  '"' + event_threads + '"') else ""} \
      ~{if defined(paragraph_threads) then ("--paragraph-threads " +  '"' + paragraph_threads + '"') else ""} \
      ~{if (keep_scratch) then "--keep-scratch" else ""} \
      ~{if defined(scratch_dir) then ("--scratch-dir " +  '"' + scratch_dir + '"') else ""} \
      ~{if defined(paragraph) then ("--paragraph " +  '"' + paragraph + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""}
  >>>
  runtime {
    docker: "None"
  }
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
    log_file: "Write logging information into file rather than to"
    quiet: "Set logging level to output errors only."
    optional_arguments: "optional arguments:"
    stderr: "--verbose             Raise logging level from warning to info."
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}