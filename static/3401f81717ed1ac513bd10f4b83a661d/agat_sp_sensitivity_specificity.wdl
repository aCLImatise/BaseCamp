version 1.0

task AgatSpSensitivitySpecificity.pl {
  input {
    Boolean? gff_one
    Boolean? gff_two
    Boolean? _output_
    Boolean? verbose_option_debug
  }
  command <<<
    agat_sp_sensitivity_specificity.pl \
      ~{true="-gff1" false="" gff_one} \
      ~{true="-gff2" false="" gff_two} \
      ~{true="-o" false="" _output_} \
      ~{true="-v" false="" verbose_option_debug}
  >>>
  parameter_meta {
    gff_one: "Input GTF/GFF file 1."
    gff_two: "Input GTF/GFF file 2."
    _output_: ", --output , --out or --outfile Output GFF file. If no output file is specified, the output will be written to STDOUT."
    verbose_option_debug: "Verbose option for debug purposes."
  }
}