version 1.0

task Repair {
  input {
    File? name_input_file
    File? name_output_file
    Boolean? input_file_sam
    Boolean? compress_bam_file
    Int? number_cpu_threads
    Boolean? add_dummy_reads
    File? include_sequences_scores
  }
  command <<<
    repair \
      ~{if defined(name_input_file) then ("-i " +  '"' + name_input_file + '"') else ""} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""} \
      ~{if (input_file_sam) then "-S" else ""} \
      ~{if (compress_bam_file) then "-c" else ""} \
      ~{if defined(number_cpu_threads) then ("-T " +  '"' + number_cpu_threads + '"') else ""} \
      ~{if (add_dummy_reads) then "-d" else ""} \
      ~{if (include_sequences_scores) then "-t" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name_input_file: "Name of input file. BAM format by default."
    name_output_file: "Name of output file. The output file is in BAM format."
    input_file_sam: "The input file is in SAM format."
    compress_bam_file: "Compress the output BAM file. This will reduce the size of BAM\\nfile, but will increase the time of retrieving reads from BAM\\nfile."
    number_cpu_threads: "Number of CPU threads. 8 by default."
    add_dummy_reads: "Do not add dummy reads for singleton reads."
    include_sequences_scores: "Do not include sequences and quality scores of reads in the\\noutput file.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
    File out_include_sequences_scores = "${in_include_sequences_scores}"
  }
}