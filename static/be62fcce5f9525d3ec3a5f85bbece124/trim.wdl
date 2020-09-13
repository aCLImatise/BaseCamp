version 1.0

task Trim {
  input {
    File? fastq_file_reads
    File? file_containing_names
    Int? use_num_threads
    Int? return_only_reads
    Int? quality_value_ascii
    Int? use_bwa_trim
  }
  command <<<
    trim \
      ~{if defined(fastq_file_reads) then ("-r " +  '"' + fastq_file_reads + '"') else ""} \
      ~{if defined(file_containing_names) then ("-f " +  '"' + file_containing_names + '"') else ""} \
      ~{if defined(use_num_threads) then ("-p " +  '"' + use_num_threads + '"') else ""} \
      ~{if defined(return_only_reads) then ("-l " +  '"' + return_only_reads + '"') else ""} \
      ~{if defined(quality_value_ascii) then ("-q " +  '"' + quality_value_ascii + '"') else ""} \
      ~{if defined(use_bwa_trim) then ("-t " +  '"' + use_bwa_trim + '"') else ""}
  >>>
  parameter_meta {
    fastq_file_reads: "Fastq file of reads"
    file_containing_names: "File containing fastq file names, one per line or\\ntwo per line for paired end reads."
    use_num_threads: "Use <num> openMP threads"
    return_only_reads: "=30\\nReturn only reads corrected and/or trimmed to >= <num>\\nbp"
    quality_value_ascii: "Quality value ascii scale, generally 64 or 33. If not\\nspecified, it will guess."
    use_bwa_trim: "=3\\nUse BWA trim parameter <num>\\n"
  }
  output {
    File out_stdout = stdout()
  }
}