version 1.0

task RunLSCpy {
  input {
    Int? long_reads
    Boolean? short_reads
    String? short_read_file_type
    Int? threads
    String? tempdir
    Int? specific_tempdir
    Int? foldername_where_is
    Directory? mode
    Int? parallelized_mode_two
    String? aligner
    Int? sort_mem_max
    Int? min_number_of_non_n
    Int? max_n
    Int? error_rate_threshold
    Int? short_read_coverage_threshold
    Int? long_read_batch_size
    File? sam_tools_path
  }
  command <<<
    runLSC_py \
      ~{if defined(long_reads) then ("--long_reads " +  '"' + long_reads + '"') else ""} \
      ~{if (short_reads) then "--short_reads" else ""} \
      ~{if defined(short_read_file_type) then ("--short_read_file_type " +  '"' + short_read_file_type + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(tempdir) then ("--tempdir " +  '"' + tempdir + '"') else ""} \
      ~{if defined(specific_tempdir) then ("--specific_tempdir " +  '"' + specific_tempdir + '"') else ""} \
      ~{if defined(foldername_where_is) then ("--output " +  '"' + foldername_where_is + '"') else ""} \
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    long_reads: "FASTAFILE Long reads to correct. Required in mode 0 or\\n1. (default: None)"
    short_reads: "[SHORT_READS [SHORT_READS ...]]\\nFASTA/FASTQ FILE Short reads used to correct the long\\nreads. Can be multiple files. If choice is cps reads,\\nthen there must be 2 files, the cps and the idx file\\nfollowing --short reads. Required in mode 0 or 1.\\n(default: None)"
    short_read_file_type: "Short read file type (default: fa)"
    threads: "Number of threads (Default = cpu_count) (default: 0)"
    tempdir: "FOLDERNAME where temporary files can be placed\\n(default: /tmp)"
    specific_tempdir: "FOLDERNAME of exactly where to place temproary\\nfolders. Required in mode 1, 2 or 3. Recommended for\\nany run where you may want to look back at\\nintermediate files. (default: None)"
    foldername_where_is: "FOLDERNAME where output is to be written. Required in\\nmode 0 or 3. (default: None)"
    mode: "0: run through, 1: Prepare homopolymer compressed long\\nand short reads. 2: Execute correction on batches of\\nlong reads. Can be superseded by --parallelized_mode_2\\nwhere you will only execute a single batch. 3: Combine\\ncorrected batches into a final output folder.\\n(default: 0)"
    parallelized_mode_two: "Mode 2, but you specify a sigle batch to execute.\\n(default: None)"
    aligner: "Aligner choice. hisat parameters have not been\\noptimized, so we recommend bowtie2. (default: bowtie2)"
    sort_mem_max: "for memory in unix sort (default: None)"
    min_number_of_non_n: "Minimum number of non-N characters in the compressed\\nread (default: 40)"
    max_n: "Maximum number of Ns in the compressed read (default:\\nNone)"
    error_rate_threshold: "Maximum percent of errors in a read to use the\\nalignment (default: 12)"
    short_read_coverage_threshold: "Minimum short read coverage to do correction (default:\\n20)"
    long_read_batch_size: "INT number of long reads to work on at a time. This is\\na key parameter to adjusting performance. A smaller\\nbatch size keeps the sizes and runtimes of\\nintermediate steps tractable on large datasets, but\\ncan slow down execution on small datasets. The default\\nvalue should be suitable for large datasets. (default:\\n500)"
    sam_tools_path: "Path to samtools by default assumes its installed. If\\nnot specified, the included version will be used.\\n(default: /usr/local/bin)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_mode = "${in_mode}"
  }
}