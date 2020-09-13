version 1.0

task RgttoolspyGtfAddTranscripts {
  input {
    File? input_gtf_file
    File? output_gtf_file
  }
  command <<<
    rgt_tools_py gtf_add_transcripts \
      ~{if defined(input_gtf_file) then ("-i " +  '"' + input_gtf_file + '"') else ""} \
      ~{if defined(output_gtf_file) then ("-o " +  '"' + output_gtf_file + '"') else ""}
  >>>
  parameter_meta {
    input_gtf_file: "Input GTF file"
    output_gtf_file: "Output GTF file"
  }
  output {
    File out_stdout = stdout()
    File out_output_gtf_file = "${in_output_gtf_file}"
  }
}