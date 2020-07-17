version 1.0

task AgatSpMergeAnnotations.pl {
  input {
    String? gff
    String? output_gff_file
  }
  command <<<
    agat_sp_merge_annotations.pl \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""}
  >>>
  parameter_meta {
    gff: "Input GTF/GFF file(s). You can specify as much file you want like so: -f file1 -f file2 -f file3"
    output_gff_file: "Output gff3 file where the gene incriminated will be write."
  }
}