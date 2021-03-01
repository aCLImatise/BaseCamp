version 1.0

task AgatSpMergeAnnotationspl {
  input {
    File? gff
    File? output_gff_file
    String agat_sp_merge_annotations_do_tpl
  }
  command <<<
    agat_sp_merge_annotations_pl \
      ~{agat_sp_merge_annotations_do_tpl} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gff: "Input GTF/GFF file(s). You can specify as much file you want\\nlike so: -f file1 -f file2 -f file3"
    output_gff_file: "Output gff3 file where the gene incriminated will be write."
    agat_sp_merge_annotations_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_output_gff_file = "${in_output_gff_file}"
  }
}