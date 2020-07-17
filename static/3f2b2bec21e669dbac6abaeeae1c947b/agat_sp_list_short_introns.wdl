version 1.0

task AgatSpListShortIntrons.pl {
  input {
    String? ref_file
    String? size
    String? output_gff_file
  }
  command <<<
    agat_sp_list_short_introns.pl \
      ~{if defined(ref_file) then ("-reffile " +  '"' + ref_file + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""}
  >>>
  parameter_meta {
    ref_file: "Input GTF/GFF file."
    size: "Minimum intron size accepted in nucleotide. All introns under this size will be reported. Default value = 10."
    output_gff_file: "Output gff3 file where the gene incriminated will be write."
  }
}