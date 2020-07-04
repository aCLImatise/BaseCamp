version 1.0

task PispinoSeqprep {
  input {
    String? directory_raw_sequences
    String? directory_output_results
    File? tap_separated_file
    Int? fast_x_q
    Int? fast_x_p
    Boolean? fast_x_n
    Int? base_phred_quality
    String? joiner_method
    Boolean? pear_options
    Boolean? retain_intermediate_files
    Boolean? verbose_mode
    Int? number_of_threads
    Boolean? forward_reads_only
  }
  command <<<
    pispino_seqprep \
      ~{if defined(directory_raw_sequences) then ("-i " +  '"' + directory_raw_sequences + '"') else ""} \
      ~{if defined(directory_output_results) then ("-o " +  '"' + directory_output_results + '"') else ""} \
      ~{if defined(tap_separated_file) then ("-l " +  '"' + tap_separated_file + '"') else ""} \
      ~{if defined(fast_x_q) then ("--FASTX-q " +  '"' + fast_x_q + '"') else ""} \
      ~{if defined(fast_x_p) then ("--FASTX-p " +  '"' + fast_x_p + '"') else ""} \
      ~{true="--FASTX-n" false="" fast_x_n} \
      ~{if defined(base_phred_quality) then ("-b " +  '"' + base_phred_quality + '"') else ""} \
      ~{if defined(joiner_method) then ("--joiner_method " +  '"' + joiner_method + '"') else ""} \
      ~{true="--PEAR_options" false="" pear_options} \
      ~{true="-r" false="" retain_intermediate_files} \
      ~{true="-v" false="" verbose_mode} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{true="--forwardreadsonly" false="" forward_reads_only}
  >>>
  parameter_meta {
    directory_raw_sequences: "[REQUIRED] Directory with raw sequences in gzipped FASTQ"
    directory_output_results: "[REQUIRED] Directory to output results"
    tap_separated_file: "Tap separated file with three columns for sample ids, forward-read filename and reverse-read filename. Only the files listed in this file will be processed."
    fast_x_q: "FASTX FASTQ_QUALITY_FILTER - Minimum quality score to keep [default: 30]"
    fast_x_p: "FASTX FASTQ_QUALITY_FILTER - Minimum percent of bases that must have q quality [default: 80]"
    fast_x_n: "FASTX FASTQ_TO_FASTA - remove sequences with unknown (N) nucleotides [default: false]"
    base_phred_quality: "Base PHRED quality score [default: 33]"
    joiner_method: "Joiner method: \"PEAR\" and \"FASTQJOIN\" [default: VSEARCH]"
    pear_options: "= <STR> User customisable parameter: You can add/change PEAR parameters. Please use \"--PEAR_options=\" followed by custom parameters wrapped around them. E.g. --PEAR_options=\"-v 8 -t 2\". Note that if you put two same parameters such as \"-v 8 -v 15\", PEAR will use the later."
    retain_intermediate_files: "Retain intermediate files (Beware intermediate files use excessive disk space!)"
    verbose_mode: "Verbose mode"
    number_of_threads: "Number of Threads [default: 1]"
    forward_reads_only: "Do NOT join paired-end sequences, but just use the forward reads."
  }
}