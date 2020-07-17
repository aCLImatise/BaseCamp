version 1.0

task AgatSpAddIntrons.pl {
  input {
    String? ref_file
    String? output_gff_file
  }
  command <<<
    agat_sp_add_introns.pl \
      ~{if defined(ref_file) then ("-reffile " +  '"' + ref_file + '"') else ""} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""}
  >>>
  parameter_meta {
    ref_file: "Input GTF/GFF file."
    output_gff_file: "Output gff3 file where the gene incriminated will be write."
  }
}