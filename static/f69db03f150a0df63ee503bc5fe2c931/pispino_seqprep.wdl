version 1.0

task PispinoSeqprep {
  input {
    Directory? directory_raw_sequences
    File? tap_separated_file
    Int? fast_x_q
    Int? fast_x_p
    Boolean? fast_x_n
    Int? base_phred_score
    String? joiner_method
    Boolean? pear_options
    Boolean? retain_intermediate_files
    Boolean? verbose_mode
    Int? number_of_threads
    Boolean? forward_reads_only
    String? o
    String fast_q
  }
  command <<<
    pispino_seqprep \
      ~{fast_q} \
      ~{if defined(directory_raw_sequences) then ("-i " +  '"' + directory_raw_sequences + '"') else ""} \
      ~{if defined(tap_separated_file) then ("-l " +  '"' + tap_separated_file + '"') else ""} \
      ~{if defined(fast_x_q) then ("--FASTX-q " +  '"' + fast_x_q + '"') else ""} \
      ~{if defined(fast_x_p) then ("--FASTX-p " +  '"' + fast_x_p + '"') else ""} \
      ~{if (fast_x_n) then "--FASTX-n" else ""} \
      ~{if defined(base_phred_score) then ("-b " +  '"' + base_phred_score + '"') else ""} \
      ~{if defined(joiner_method) then ("--joiner_method " +  '"' + joiner_method + '"') else ""} \
      ~{if (pear_options) then "--PEAR_options" else ""} \
      ~{if (retain_intermediate_files) then "-r" else ""} \
      ~{if (verbose_mode) then "-v" else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if (forward_reads_only) then "--forwardreadsonly" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    directory_raw_sequences: "[REQUIRED] Directory with raw sequences in gzipped"
    tap_separated_file: "Tap separated file with three columns for sample ids,\\nforward-read filename and reverse-read filename. Only\\nthe files listed in this file will be processed."
    fast_x_q: "FASTX FASTQ_QUALITY_FILTER - Minimum quality score to\\nkeep [default: 30]"
    fast_x_p: "FASTX FASTQ_QUALITY_FILTER - Minimum percent of bases\\nthat must have q quality [default: 80]"
    fast_x_n: "FASTX FASTQ_TO_FASTA - remove sequences with unknown\\n(N) nucleotides [default: false]"
    base_phred_score: "Base PHRED quality score [default: 33]"
    joiner_method: "Joiner method: \\\"PEAR\\\" and \\\"FASTQJOIN\\\" [default:\\nVSEARCH]"
    pear_options: "= <STR>\\nUser customisable parameter: You can add/change PEAR\\nparameters. Please use \\\"--PEAR_options=\\\" followed by\\ncustom parameters wrapped around them. E.g.\\n--PEAR_options=\\\"-v 8 -t 2\\\". Note that if you put two\\nsame parameters such as \\\"-v 8 -v 15\\\", PEAR will use\\nthe later."
    retain_intermediate_files: "Retain intermediate files (Beware intermediate files\\nuse excessive disk space!)"
    verbose_mode: "Verbose mode"
    number_of_threads: "Number of Threads [default: 1]"
    forward_reads_only: "Do NOT join paired-end sequences, but just use the\\nforward reads.\\n"
    o: ""
    fast_q: "-o <DIR>              [REQUIRED] Directory to output results"
  }
  output {
    File out_stdout = stdout()
  }
}