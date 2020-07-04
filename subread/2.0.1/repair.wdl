version 1.0

task Repair {
  input {
    String? name_input_file
    String? name_output_file
    Boolean? input_file_sam
    Boolean? compress_output_bam
    Int? number_cpu_threads
    Boolean? add_dummy_reads
    Boolean? include_sequences_quality
  }
  command <<<
    repair \
      ~{if defined(name_input_file) then ("-i " +  '"' + name_input_file + '"') else ""} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""} \
      ~{true="-S" false="" input_file_sam} \
      ~{true="-c" false="" compress_output_bam} \
      ~{if defined(number_cpu_threads) then ("-T " +  '"' + number_cpu_threads + '"') else ""} \
      ~{true="-d" false="" add_dummy_reads} \
      ~{true="-t" false="" include_sequences_quality}
  >>>
  parameter_meta {
    name_input_file: "Name of input file. BAM format by default."
    name_output_file: "Name of output file. The output file is in BAM format."
    input_file_sam: "The input file is in SAM format."
    compress_output_bam: "Compress the output BAM file. This will reduce the size of BAM file, but will increase the time of retrieving reads from BAM file."
    number_cpu_threads: "Number of CPU threads. 8 by default."
    add_dummy_reads: "Do not add dummy reads for singleton reads."
    include_sequences_quality: "Do not include sequences and quality scores of reads in the output file."
  }
}