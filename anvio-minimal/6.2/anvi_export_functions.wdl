version 1.0

task Anviexportfunctions {
  input {
    String? contigs_db
    File? output_file
    Int? annotation_sources
    Boolean? list_annotation_sources
  }
  command <<<
    anvi_export_functions \
      ~{if defined(contigs_db) then ("--contigs-db " +  '"' + contigs_db + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(annotation_sources) then ("--annotation-sources " +  '"' + annotation_sources + '"') else ""} \
      ~{if (list_annotation_sources) then "--list-annotation-sources" else ""}
  >>>
  parameter_meta {
    contigs_db: "Anvi'o contigs database generated by 'anvi-gen-\\ncontigs'"
    output_file: "File path to store results."
    annotation_sources: "NAME[S]\\nGet functional annotations for a specific list of\\nannotation sources. You can specify one or more\\nsources by separating them from each other with a\\ncomma character (i.e., '--annotation-sources\\nsource_1,source_2,source_3'). The default behavior is\\nto return everything"
    list_annotation_sources: "List available functional annotation sources.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}