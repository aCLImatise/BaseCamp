version 1.0

task Correct {
  input {
    File? fastq_file_reads
    File? file_containing_names
    Boolean? write_output_files
    Int? kmer_size_correct
    File? file_containing_counts
    File? file_containing_bithash
    Int? separate_trusteduntrusted_kmers_num
    File? separate_trusteduntrusted_kmers_function
    Int? use_num_openmp
    Int? return_only_reads
    Int? quality_value_ascii
    Int? use_bwa_trim
    Boolean? output_errors_reads
    Boolean? headers
    Boolean? log
  }
  command <<<
    correct \
      ~{if defined(fastq_file_reads) then ("-r " +  '"' + fastq_file_reads + '"') else ""} \
      ~{if defined(file_containing_names) then ("-f " +  '"' + file_containing_names + '"') else ""} \
      ~{if (write_output_files) then "-z" else ""} \
      ~{if defined(kmer_size_correct) then ("-k " +  '"' + kmer_size_correct + '"') else ""} \
      ~{if defined(file_containing_counts) then ("-m " +  '"' + file_containing_counts + '"') else ""} \
      ~{if defined(file_containing_bithash) then ("-b " +  '"' + file_containing_bithash + '"') else ""} \
      ~{if defined(separate_trusteduntrusted_kmers_num) then ("-c " +  '"' + separate_trusteduntrusted_kmers_num + '"') else ""} \
      ~{if defined(separate_trusteduntrusted_kmers_function) then ("-a " +  '"' + separate_trusteduntrusted_kmers_function + '"') else ""} \
      ~{if defined(use_num_openmp) then ("-p " +  '"' + use_num_openmp + '"') else ""} \
      ~{if defined(return_only_reads) then ("-l " +  '"' + return_only_reads + '"') else ""} \
      ~{if defined(quality_value_ascii) then ("-q " +  '"' + quality_value_ascii + '"') else ""} \
      ~{if defined(use_bwa_trim) then ("-t " +  '"' + use_bwa_trim + '"') else ""} \
      ~{if (output_errors_reads) then "-u" else ""} \
      ~{if (headers) then "--headers" else ""} \
      ~{if (log) then "--log" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fastq_file_reads: "Fastq file of reads"
    file_containing_names: "File containing fastq file names, one per line or\\ntwo per line for paired end reads."
    write_output_files: "Write output files as gzipped."
    kmer_size_correct: "K-mer size to correct."
    file_containing_counts: "File containing kmer counts in format `seq  count`.\\nCan be gzipped."
    file_containing_bithash: "File containing saved bithash."
    separate_trusteduntrusted_kmers_num: "Separate trusted/untrusted kmers at cutoff <num>"
    separate_trusteduntrusted_kmers_function: "Separate trusted/untrusted kmers as a function of AT\\ncontent, with cutoffs found in <file>, one per line"
    use_num_openmp: "Use <num> openMP threads"
    return_only_reads: "=30\\nReturn only reads corrected and/or trimmed to >= <num>\\nbp"
    quality_value_ascii: "Quality value ascii scale, generally 64 or 33. If not\\nspecified, it will guess."
    use_bwa_trim: "=3\\nUse BWA trim parameter <num>"
    output_errors_reads: "Output errors reads even if they can't be corrected,\\nmaintaining paired end reads."
    headers: "Output only the original read headers without\\ncorrection messages"
    log: "Output a log of all corrections into *.log as\\n'quality position new_nt old_nt'\\n"
  }
  output {
    File out_stdout = stdout()
  }
}