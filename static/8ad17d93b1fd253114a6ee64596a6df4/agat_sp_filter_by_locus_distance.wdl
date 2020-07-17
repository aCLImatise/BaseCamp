version 1.0

task AgatSpFilterByLocusDistance.pl {
  input {
    Boolean? gff
    String? dist
    String? add_flag
    Boolean? _output_
    Boolean? verbose_option_make
  }
  command <<<
    agat_sp_filter_by_locus_distance.pl \
      ~{true="-gff" false="" gff} \
      ~{if defined(dist) then ("--dist " +  '"' + dist + '"') else ""} \
      ~{if defined(add_flag) then ("--add_flag " +  '"' + add_flag + '"') else ""} \
      ~{true="-o" false="" _output_} \
      ~{true="-v" false="" verbose_option_make}
  >>>
  parameter_meta {
    gff: "Input GTF/GFF file."
    dist: "The minimum inter-loci distance to allow. No default (will not apply filter by default)."
    add_flag: "Instead of filter the result into two output files, write only one and add the flag <low_dist> in the gff.(tag = Lvalue or tag = Rvalue where L is left and R right and the value is the distance with accordingle the left or right locus)"
    _output_: ", --output , --out or --outfile Output GFF file. If no output file is specified, the output will be written to STDOUT."
    verbose_option_make: "Verbose option, make it easier to follow what is going on for debugging purpose."
  }
}