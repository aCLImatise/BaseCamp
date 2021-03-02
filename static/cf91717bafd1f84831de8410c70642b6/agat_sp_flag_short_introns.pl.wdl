version 1.0

task AgatSpFlagShortIntronspl {
  input {
    File? ref_file
    Int? intron_size
    File? output_gff_file
    Boolean? bolean_verbose_debugging
    String agat_sp_flag_short_introns_do_tpl
  }
  command <<<
    agat_sp_flag_short_introns_pl \
      ~{agat_sp_flag_short_introns_do_tpl} \
      ~{if defined(ref_file) then ("-reffile " +  '"' + ref_file + '"') else ""} \
      ~{if defined(intron_size) then ("--intron_size " +  '"' + intron_size + '"') else ""} \
      ~{if defined(output_gff_file) then ("--output " +  '"' + output_gff_file + '"') else ""} \
      ~{if (bolean_verbose_debugging) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.5.1--pl526r35_0"
  }
  parameter_meta {
    ref_file: "Input GTF/GFF file."
    intron_size: "Minimum intron size, default 10. All genes with an intron < of\\nthis size will be flagged with the pseudo attribute (the value\\nwill be the size of the smallest intron found within the\\nincriminated gene)"
    output_gff_file: "Output gff3 file where the result will be printed."
    bolean_verbose_debugging: "Bolean. Verbose for debugging purpose."
    agat_sp_flag_short_introns_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_output_gff_file = "${in_output_gff_file}"
  }
}