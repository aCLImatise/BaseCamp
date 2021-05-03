version 1.0

task Figaropy {
  input {
    Directory? output_directory
    Int? amplicon_length
    Int? forward_primer_length
    Int? reverse_primer_length
    Directory? input_directory
    File? output_file_name
    String? minimum_overlap
    Int? subsample
    String? percentile
    File? file_naming_standard
    File? log_file
  }
  command <<<
    figaro_py \
      ~{if defined(output_directory) then ("--outputDirectory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(amplicon_length) then ("--ampliconLength " +  '"' + amplicon_length + '"') else ""} \
      ~{if defined(forward_primer_length) then ("--forwardPrimerLength " +  '"' + forward_primer_length + '"') else ""} \
      ~{if defined(reverse_primer_length) then ("--reversePrimerLength " +  '"' + reverse_primer_length + '"') else ""} \
      ~{if defined(input_directory) then ("--inputDirectory " +  '"' + input_directory + '"') else ""} \
      ~{if defined(output_file_name) then ("--outputFileName " +  '"' + output_file_name + '"') else ""} \
      ~{if defined(minimum_overlap) then ("--minimumOverlap " +  '"' + minimum_overlap + '"') else ""} \
      ~{if defined(subsample) then ("--subsample " +  '"' + subsample + '"') else ""} \
      ~{if defined(percentile) then ("--percentile " +  '"' + percentile + '"') else ""} \
      ~{if defined(file_naming_standard) then ("--fileNamingStandard " +  '"' + file_naming_standard + '"') else ""} \
      ~{if defined(log_file) then ("--logFile " +  '"' + log_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/figaro:1.1.2--hdfd78af_0"
  }
  parameter_meta {
    output_directory: "Directory for outputs"
    amplicon_length: "Length of amplicon (not including primers)"
    forward_primer_length: "Length of forward primer"
    reverse_primer_length: "Length of reverse primer"
    input_directory: "Directory with Fastq files to analyze"
    output_file_name: "Output file for trim site JSON"
    minimum_overlap: "Minimum overlap between the paired-end reads"
    subsample: "Subsampling level (will analyze approximately 1/x\\nreads"
    percentile: "Percentile to use for expected error model"
    file_naming_standard: "File naming standard to use"
    log_file: "Log file path\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
    File out_output_file_name = "${in_output_file_name}"
  }
}