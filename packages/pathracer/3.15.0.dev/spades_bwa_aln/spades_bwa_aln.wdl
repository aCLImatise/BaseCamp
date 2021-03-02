version 1.0

task SpadesbwaAln {
  input {
    Int? max_diff_int
    Int? maximum_number_fraction
    Int? maximum_number_gap
    Int? put_indel_int
    Int? maximum_occurrences_extending
    Int? seed_length
    Int? maximum_differences_seed
    Int? maximum_entries_queue
    Int? number_of_threads
    Int? mismatch_penalty
    Int? gap_open_penalty
    Int? gap_extension_penalty
    Int? stop_searching_are
    Int? quality_threshold_read
    File? file_write_output
    Int? length_of_barcode
    Boolean? logscaled_gap_penalty
    Boolean? noniterative_mode_search
    Boolean? input_illumina_format
    Boolean? input_read_file
    Boolean? use_reads_effective
    Boolean? use_st_read
    Boolean? use_nd_read
    Boolean? filter_casavafiltered_sequences
    String bwa
    String aln
    String prefix
    String in_dot_fq
  }
  command <<<
    spades_bwa aln \
      ~{bwa} \
      ~{aln} \
      ~{prefix} \
      ~{in_dot_fq} \
      ~{if defined(max_diff_int) then ("-n " +  '"' + max_diff_int + '"') else ""} \
      ~{if defined(maximum_number_fraction) then ("-o " +  '"' + maximum_number_fraction + '"') else ""} \
      ~{if defined(maximum_number_gap) then ("-e " +  '"' + maximum_number_gap + '"') else ""} \
      ~{if defined(put_indel_int) then ("-i " +  '"' + put_indel_int + '"') else ""} \
      ~{if defined(maximum_occurrences_extending) then ("-d " +  '"' + maximum_occurrences_extending + '"') else ""} \
      ~{if defined(seed_length) then ("-l " +  '"' + seed_length + '"') else ""} \
      ~{if defined(maximum_differences_seed) then ("-k " +  '"' + maximum_differences_seed + '"') else ""} \
      ~{if defined(maximum_entries_queue) then ("-m " +  '"' + maximum_entries_queue + '"') else ""} \
      ~{if defined(number_of_threads) then ("-t " +  '"' + number_of_threads + '"') else ""} \
      ~{if defined(mismatch_penalty) then ("-M " +  '"' + mismatch_penalty + '"') else ""} \
      ~{if defined(gap_open_penalty) then ("-O " +  '"' + gap_open_penalty + '"') else ""} \
      ~{if defined(gap_extension_penalty) then ("-E " +  '"' + gap_extension_penalty + '"') else ""} \
      ~{if defined(stop_searching_are) then ("-R " +  '"' + stop_searching_are + '"') else ""} \
      ~{if defined(quality_threshold_read) then ("-q " +  '"' + quality_threshold_read + '"') else ""} \
      ~{if defined(file_write_output) then ("-f " +  '"' + file_write_output + '"') else ""} \
      ~{if defined(length_of_barcode) then ("-B " +  '"' + length_of_barcode + '"') else ""} \
      ~{if (logscaled_gap_penalty) then "-L" else ""} \
      ~{if (noniterative_mode_search) then "-N" else ""} \
      ~{if (input_illumina_format) then "-I" else ""} \
      ~{if (input_read_file) then "-b" else ""} \
      ~{if (use_reads_effective) then "-0" else ""} \
      ~{if (use_st_read) then "-1" else ""} \
      ~{if (use_nd_read) then "-2" else ""} \
      ~{if (filter_casavafiltered_sequences) then "-Y" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pathracer:3.15.0.dev--h2d02072_0"
  }
  parameter_meta {
    max_diff_int: "max #diff (int) or missing prob under 0.02 err rate (float) [0.04]"
    maximum_number_fraction: "maximum number or fraction of gap opens [1]"
    maximum_number_gap: "maximum number of gap extensions, -1 for disabling long gaps [-1]"
    put_indel_int: "do not put an indel within INT bp towards the ends [5]"
    maximum_occurrences_extending: "maximum occurrences for extending a long deletion [10]"
    seed_length: "seed length [32]"
    maximum_differences_seed: "maximum differences in the seed [2]"
    maximum_entries_queue: "maximum entries in the queue [2000000]"
    number_of_threads: "number of threads [1]"
    mismatch_penalty: "mismatch penalty [3]"
    gap_open_penalty: "gap open penalty [11]"
    gap_extension_penalty: "gap extension penalty [4]"
    stop_searching_are: "stop searching when there are >INT equally best hits [30]"
    quality_threshold_read: "quality threshold for read trimming down to 35bp [0]"
    file_write_output: "file to write output to instead of stdout"
    length_of_barcode: "length of barcode"
    logscaled_gap_penalty: "log-scaled gap penalty for long deletions"
    noniterative_mode_search: "non-iterative mode: search for all n-difference hits (slooow)"
    input_illumina_format: "the input is in the Illumina 1.3+ FASTQ-like format"
    input_read_file: "the input read file is in the BAM format"
    use_reads_effective: "use single-end reads only (effective with -b)"
    use_st_read: "use the 1st read in a pair (effective with -b)"
    use_nd_read: "use the 2nd read in a pair (effective with -b)"
    filter_casavafiltered_sequences: "filter Casava-filtered sequences"
    bwa: ""
    aln: ""
    prefix: ""
    in_dot_fq: ""
  }
  output {
    File out_stdout = stdout()
    File out_file_write_output = "${in_file_write_output}"
  }
}