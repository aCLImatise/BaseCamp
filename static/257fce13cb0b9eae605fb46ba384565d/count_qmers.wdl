version 1.0

task CountQmers {
  input {
    String? fastq_file_count
    String? length_of_kmer
    Int? minimum_count_report
    String? gigabyte_limit_ram
    String? quality_value_ascii
  }
  command <<<
    count-qmers \
      ~{if defined(fastq_file_count) then ("-f " +  '"' + fastq_file_count + '"') else ""} \
      ~{if defined(length_of_kmer) then ("-k " +  '"' + length_of_kmer + '"') else ""} \
      ~{if defined(minimum_count_report) then ("-m " +  '"' + minimum_count_report + '"') else ""} \
      ~{if defined(gigabyte_limit_ram) then ("-l " +  '"' + gigabyte_limit_ram + '"') else ""} \
      ~{if defined(quality_value_ascii) then ("-q " +  '"' + quality_value_ascii + '"') else ""}
  >>>
  parameter_meta {
    fastq_file_count: "fastq file to count"
    length_of_kmer: "Length of kmer "
    minimum_count_report: "Minimum count to report (default: >0)"
    gigabyte_limit_ram: "Gigabyte limit on RAM. If limited, the output will contain redundancies"
    quality_value_ascii: "Quality value ascii scale, generally 64 or 33.  If not specified, it will guess."
  }
}