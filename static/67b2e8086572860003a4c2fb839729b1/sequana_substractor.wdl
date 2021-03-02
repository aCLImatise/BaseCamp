version 1.0

task SequanaSubstractor {
  input {
    File? input_fastq_file
    File? output_fastq_filename
    Directory? output_directory
    String? mapper
    Int? threads
    String reads
  }
  command <<<
    sequana_substractor \
      ~{reads} \
      ~{if defined(input_fastq_file) then ("--input " +  '"' + input_fastq_file + '"') else ""} \
      ~{if defined(output_fastq_filename) then ("--output " +  '"' + output_fastq_filename + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(mapper) then ("--mapper " +  '"' + mapper + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_fastq_file: "input FastQ file (default: None)"
    output_fastq_filename: "output FastQ filename (default: reads.fastq)"
    output_directory: "input fastq gzipped or not (default:\\nsequana_substractor)"
    mapper: "mapper minimap2 or bwa (default: minimap2)"
    threads: "threading (default: 4)"
    reads: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_fastq_filename = "${in_output_fastq_filename}"
    Directory out_output_directory = "${in_output_directory}"
  }
}