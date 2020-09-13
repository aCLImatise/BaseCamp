version 1.0

task SequanaBamSplitter {
  input {
    File? input_sambamcram_default
    Directory? output_directory
    String? prefix
    Boolean? keep_unmapped
    String? level
    String this
    String bam_slash_sam_slash_cram
    String filter
    String removes
    String unmapped
    String and
    String secondary
  }
  command <<<
    sequana_bam_splitter \
      ~{this} \
      ~{bam_slash_sam_slash_cram} \
      ~{filter} \
      ~{removes} \
      ~{unmapped} \
      ~{and} \
      ~{secondary} \
      ~{if defined(input_sambamcram_default) then ("--input " +  '"' + input_sambamcram_default + '"') else ""} \
      ~{if defined(output_directory) then ("--output-directory " +  '"' + output_directory + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (keep_unmapped) then "--keep-unmapped" else ""} \
      ~{if defined(level) then ("--level " +  '"' + level + '"') else ""}
  >>>
  parameter_meta {
    input_sambamcram_default: "input SAM/BAM/CRAM file (default: None)"
    output_directory: "input fastq gzipped or not (default: None)"
    prefix: ""
    keep_unmapped: "keep unmapped files (default: False)"
    level: ""
    this: ""
    bam_slash_sam_slash_cram: ""
    filter: ""
    removes: ""
    unmapped: ""
    and: ""
    secondary: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}