version 1.0

task AgatSpCompareTwoAnnotationspl {
  input {
    Boolean? gff_one
    Boolean? gff_two
    File? _output_
    Boolean? verbose_option_make
    String agat_sp_compare_two_annotations_do_tpl
  }
  command <<<
    agat_sp_compare_two_annotations_pl \
      ~{agat_sp_compare_two_annotations_do_tpl} \
      ~{if (gff_one) then "-gff1" else ""} \
      ~{if (gff_two) then "-gff2" else ""} \
      ~{if (_output_) then "-o" else ""} \
      ~{if (verbose_option_make) then "-v" else ""}
  >>>
  parameter_meta {
    gff_one: "Input GTF/GFF file1."
    gff_two: "Input GTF/GFF file2."
    _output_: ", --output , --out or --outfile\\nOutput GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    verbose_option_make: "Verbose option, make it easier to follow what is going on for\\ndebugging purpose."
    agat_sp_compare_two_annotations_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out__output_ = "${in__output_}"
  }
}