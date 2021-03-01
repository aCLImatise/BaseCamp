version 1.0

task SequanaBamSplitter {
  input {
    File? input_sambamcram_file
    Directory? output_directory
    String? keep_unmapped
    String this
    String bam
  }
  command <<<
    sequana_bam_splitter \
      ~{this} \
      ~{bam} \
      ~{if defined(input_sambamcram_file) then ("--input " +  '"' + input_sambamcram_file + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(keep_unmapped) then ("--keep-unmapped " +  '"' + keep_unmapped + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_sambamcram_file: "input SAM/BAM/CRAM file (default: None)"
    output_directory: "input fastq gzipped or not (default: None)"
    keep_unmapped: "keep unmapped files (default: False)"
    this: ""
    bam: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}