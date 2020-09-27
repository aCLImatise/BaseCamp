version 1.0

task Quakepy {
  input {
    File? fastq_file_reads
    File? file_containing_names
    Int? size_kmers_correct
    Int? number_of_processes
    Int? quality_value_ascii
    Boolean? no_jelly
    Boolean? no_count
    Boolean? count_kmers_wo
    Int? hash_size
    Boolean? no_cut
    Int? ratio
    Int? return_only_reads
    Boolean? output_error_reads
    String? use_parameter_trimpar
    Boolean? headers
    Boolean? log
  }
  command <<<
    quake_py \
      ~{if defined(fastq_file_reads) then ("-r " +  '"' + fastq_file_reads + '"') else ""} \
      ~{if defined(file_containing_names) then ("-f " +  '"' + file_containing_names + '"') else ""} \
      ~{if defined(size_kmers_correct) then ("-k " +  '"' + size_kmers_correct + '"') else ""} \
      ~{if defined(number_of_processes) then ("-p " +  '"' + number_of_processes + '"') else ""} \
      ~{if defined(quality_value_ascii) then ("-q " +  '"' + quality_value_ascii + '"') else ""} \
      ~{if (no_jelly) then "--no_jelly" else ""} \
      ~{if (no_count) then "--no_count" else ""} \
      ~{if (count_kmers_wo) then "--int" else ""} \
      ~{if defined(hash_size) then ("--hash_size " +  '"' + hash_size + '"') else ""} \
      ~{if (no_cut) then "--no_cut" else ""} \
      ~{if defined(ratio) then ("--ratio " +  '"' + ratio + '"') else ""} \
      ~{if defined(return_only_reads) then ("-l " +  '"' + return_only_reads + '"') else ""} \
      ~{if (output_error_reads) then "-u" else ""} \
      ~{if defined(use_parameter_trimpar) then ("-t " +  '"' + use_parameter_trimpar + '"') else ""} \
      ~{if (headers) then "--headers" else ""} \
      ~{if (log) then "--log" else ""}
  >>>
  parameter_meta {
    fastq_file_reads: "Fastq file of reads"
    file_containing_names: "File containing fastq file names, one per line or two\\nper line for paired end reads."
    size_kmers_correct: "Size of k-mers to correct"
    number_of_processes: "Number of processes [default: 4]"
    quality_value_ascii: "Quality value ascii scale, generally 64 or 33. If not\\nspecified, it will guess."
    no_jelly: "Count k-mers using a simpler program than Jellyfish"
    no_count: "Kmers are already counted and in expected file [reads\\nfile].qcts or [reads file].cts [default: False]"
    count_kmers_wo: "Count kmers as integers w/o the use of quality values\\n[default: False]"
    hash_size: "Jellyfish hash-size parameter. Quake will estimate\\nusing k if not given"
    no_cut: "Coverage model is optimized and cutoff was printed to\\nexpected file cutoff.txt [default: False]"
    ratio: "Likelihood ratio to set trusted/untrusted cutoff.\\nGenerally set between 10-1000 with lower numbers\\nsuggesting a lower threshold. [default: 200]"
    return_only_reads: "Return only reads corrected and/or trimmed to\\n<min_read> bp"
    output_error_reads: "Output error reads even if they can't be corrected,\\nmaintaing paired end reads"
    use_parameter_trimpar: "Use BWA-like trim parameter <trim_par>"
    headers: "Output only the original read headers without\\ncorrection messages"
    log: "Output a log of all corrections into *.log as \\\"quality\\nposition new_nt old_nt\\\"\\n"
  }
  output {
    File out_stdout = stdout()
  }
}