version 1.0

task AgatSpFlagShortIntrons.pl {
  input {
    String? ref_file
    String? intron_size
    String? output_gff_file
    Boolean? bolean_verbose_debugging
  }
  command <<<
    agat_sp_flag_short_introns.pl \
      ~{if defined(ref_file) then ("-reffile " +  '"' + ref_file + '"') else ""} \
      ~{if defined(intron_size) then ("--intron_size " +  '"' + intron_size + '"') else ""} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""} \
      ~{true="-v" false="" bolean_verbose_debugging}
  >>>
  parameter_meta {
    ref_file: "Input GTF/GFF file."
    intron_size: "Minimum intron size, default 10. All genes with an intron < of this size will be flagged with the pseudo attribute (the value will be the size of the smallest intron found within the incriminated gene)"
    output_gff_file: "Output gff3 file where the result will be printed."
    bolean_verbose_debugging: "Bolean. Verbose for debugging purpose."
  }
}