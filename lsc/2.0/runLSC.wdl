version 1.0

task RunLSC.py {
  input {
    String? long_reads
    Boolean? short_reads
    String? short_read_file_type
    String? threads
    String? tempdir
    String? specific_tempdir
    String? foldername_where_output
    String? mode
    String? parallelized_mode_two
    String? aligner
    String? sort_mem_max
    Int? min_number_of_non_n
    Int? max_n
    String? error_rate_threshold
    String? short_read_coverage_threshold
    String? long_read_batch_size
    String? sam_tools_path
  }
  command <<<
    runLSC.py \
      ~{if defined(long_reads) then ("--long_reads " +  '"' + long_reads + '"') else ""} \
      ~{true="--short_reads" false="" short_reads} \
      ~{if defined(short_read_file_type) then ("--short_read_file_type " +  '"' + short_read_file_type + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(tempdir) then ("--tempdir " +  '"' + tempdir + '"') else ""} \
      ~{if defined(specific_tempdir) then ("--specific_tempdir " +  '"' + specific_tempdir + '"') else ""} \
      ~{if defined(foldername_where_output) then ("--output " +  '"' + foldername_where_output + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(parallelized_mode_two) then ("--parallelized_mode_2 " +  '"' + parallelized_mode_two + '"') else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if defined(sort_mem_max) then ("--sort_mem_max " +  '"' + sort_mem_max + '"') else ""} \
      ~{if defined(min_number_of_non_n) then ("--minNumberofNonN " +  '"' + min_number_of_non_n + '"') else ""} \
      ~{if defined(max_n) then ("--maxN " +  '"' + max_n + '"') else ""} \
      ~{if defined(error_rate_threshold) then ("--error_rate_threshold " +  '"' + error_rate_threshold + '"') else ""} \
      ~{if defined(short_read_coverage_threshold) then ("--short_read_coverage_threshold " +  '"' + short_read_coverage_threshold + '"') else ""} \
      ~{if defined(long_read_batch_size) then ("--long_read_batch_size " +  '"' + long_read_batch_size + '"') else ""} \
      ~{if defined(sam_tools_path) then ("--samtools_path " +  '"' + sam_tools_path + '"') else ""}
  >>>
  parameter_meta {
    long_reads: "FASTAFILE Long reads to correct. Required in mode 0 or 1. (default: None)"
    short_reads: "[SHORT_READS [SHORT_READS ...]] FASTA/FASTQ FILE Short reads used to correct the long reads. Can be multiple files. If choice is cps reads, then there must be 2 files, the cps and the idx file following --short reads. Required in mode 0 or 1. (default: None)"
    short_read_file_type: "Short read file type (default: fa)"
    threads: "Number of threads (Default = cpu_count) (default: 0)"
    tempdir: "FOLDERNAME where temporary files can be placed (default: /tmp)"
    specific_tempdir: "FOLDERNAME of exactly where to place temproary folders. Required in mode 1, 2 or 3. Recommended for any run where you may want to look back at intermediate files. (default: None)"
    foldername_where_output: "FOLDERNAME where output is to be written. Required in mode 0 or 3. (default: None)"
    mode: "0: run through, 1: Prepare homopolymer compressed long and short reads. 2: Execute correction on batches of long reads. Can be superseded by --parallelized_mode_2 where you will only execute a single batch. 3: Combine corrected batches into a final output folder. (default: 0)"
    parallelized_mode_two: "Mode 2, but you specify a sigle batch to execute. (default: None)"
    aligner: "Aligner choice. hisat parameters have not been optimized, so we recommend bowtie2. (default: bowtie2)"
    sort_mem_max: "-S option for memory in unix sort (default: None)"
    min_number_of_non_n: "Minimum number of non-N characters in the compressed read (default: 40)"
    max_n: "Maximum number of Ns in the compressed read (default: None)"
    error_rate_threshold: "Maximum percent of errors in a read to use the alignment (default: 12)"
    short_read_coverage_threshold: "Minimum short read coverage to do correction (default: 20)"
    long_read_batch_size: "INT number of long reads to work on at a time. This is a key parameter to adjusting performance. A smaller batch size keeps the sizes and runtimes of intermediate steps tractable on large datasets, but can slow down execution on small datasets. The default value should be suitable for large datasets. (default: 500)"
    sam_tools_path: "Path to samtools by default assumes its installed. If not specified, the included version will be used. (default: /tmp/tmp9_rw3dys/bin)"
  }
}