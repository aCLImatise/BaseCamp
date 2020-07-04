version 1.0

task AgatSpCompareTwoAnnotations.pl {
  input {
    Boolean? gff_one
    Boolean? gff_two
    Boolean? _output_
    Boolean? verbose_option_make
  }
  command <<<
    agat_sp_compare_two_annotations.pl \
      ~{true="-gff1" false="" gff_one} \
      ~{true="-gff2" false="" gff_two} \
      ~{true="-o" false="" _output_} \
      ~{true="-v" false="" verbose_option_make}
  >>>
  parameter_meta {
    gff_one: "Input GTF/GFF file1."
    gff_two: "Input GTF/GFF file2."
    _output_: ", --output , --out or --outfile Output GFF file. If no output file is specified, the output will be written to STDOUT."
    verbose_option_make: "Verbose option, make it easier to follow what is going on for debugging purpose."
  }
}