version 1.0

task AgatSpListShortIntronspl {
  input {
    File? ref_file
    Int? size
    File? output_gff_file
    String agat_sp_list_short_introns_do_tpl
  }
  command <<<
    agat_sp_list_short_introns_pl \
      ~{agat_sp_list_short_introns_do_tpl} \
      ~{if defined(ref_file) then ("-reffile " +  '"' + ref_file + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""}
  >>>
  parameter_meta {
    ref_file: "Input GTF/GFF file."
    size: "Minimum intron size accepted in nucleotide. All introns under\\nthis size will be reported. Default value = 10."
    output_gff_file: "Output gff3 file where the gene incriminated will be write."
    agat_sp_list_short_introns_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_output_gff_file = "${in_output_gff_file}"
  }
}