version 1.0

task AgatSpSeparateByRecordTypepl {
  input {
    File? gff
    Directory? output_folder_output
    String agat_sp_separate_by_record_type_do_tpl
  }
  command <<<
    agat_sp_separate_by_record_type_pl \
      ~{agat_sp_separate_by_record_type_do_tpl} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(output_folder_output) then ("--output " +  '"' + output_folder_output + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.5.1--pl526r35_0"
  }
  parameter_meta {
    gff: "Input GTF/GFF file."
    output_folder_output: "Output folder. If no output folder provided, the default name\\nwill be <split_result>."
    agat_sp_separate_by_record_type_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder_output = "${in_output_folder_output}"
  }
}