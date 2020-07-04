version 1.0

task Pbmerge {
  input {
    Boolean? str_output_bam
    Boolean? no_pbi
    String file_input_files
  }
  command <<<
    pbmerge \
      ~{file_input_files} \
      ~{true="-o" false="" str_output_bam} \
      ~{true="--no-pbi" false="" no_pbi}
  >>>
  parameter_meta {
    str_output_bam: "STR   Output BAM filename. Writes to stdout if not provided."
    no_pbi: "Disables creation of PBI index file. PBI always disabled when writing to stdout."
    file_input_files: "FILE  Input file(s). Maybe one of: DataSetXML, BAM file(s), or FOFN"
  }
}