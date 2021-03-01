version 1.0

task Pbmerge {
  input {
    File? str_output_bam
    Boolean? no_pbi
    String file_input_files
  }
  command <<<
    pbmerge \
      ~{file_input_files} \
      ~{if (str_output_bam) then "-o" else ""} \
      ~{if (no_pbi) then "--no-pbi" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pbbam:1.6.0--h5b7e6e0_0"
  }
  parameter_meta {
    str_output_bam: "STR   Output BAM filename. Writes to stdout if not provided."
    no_pbi: "Disables creation of PBI index file. PBI always disabled when writing to stdout."
    file_input_files: "FILE  Input file(s). Maybe one of: DataSetXML, BAM file(s), or FOFN"
  }
  output {
    File out_stdout = stdout()
    File out_str_output_bam = "${in_str_output_bam}"
  }
}