version 1.0

task AgatSpSeparateByRecordType.pl {
  input {
    String? gff
    String? output_folder_output
  }
  command <<<
    agat_sp_separate_by_record_type.pl \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(output_folder_output) then ("--output " +  '"' + output_folder_output + '"') else ""}
  >>>
  parameter_meta {
    gff: "Input GTF/GFF file."
    output_folder_output: "Output folder. If no output folder provided, the default name will be <split_result>."
  }
}