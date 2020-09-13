version 1.0

task AgatSpFilterByLocusDistancepl {
  input {
    Boolean? gff
    String? dist
    String? add_flag
    File? _output_
    Boolean? verbose_option_make
    String agat_sp_filter_by_locus_distance_do_tpl
  }
  command <<<
    agat_sp_filter_by_locus_distance_pl \
      ~{agat_sp_filter_by_locus_distance_do_tpl} \
      ~{if (gff) then "-gff" else ""} \
      ~{if defined(dist) then ("--dist " +  '"' + dist + '"') else ""} \
      ~{if defined(add_flag) then ("--add_flag " +  '"' + add_flag + '"') else ""} \
      ~{if (_output_) then "-o" else ""} \
      ~{if (verbose_option_make) then "-v" else ""}
  >>>
  parameter_meta {
    gff: "Input GTF/GFF file."
    dist: "The minimum inter-loci distance to allow. No default (will not\\napply filter by default)."
    add_flag: "Instead of filter the result into two output files, write only\\none and add the flag <low_dist> in the gff.(tag = Lvalue or tag\\n= Rvalue where L is left and R right and the value is the\\ndistance with accordingle the left or right locus)"
    _output_: ", --output , --out or --outfile\\nOutput GFF file. If no output file is specified, the output will\\nbe written to STDOUT."
    verbose_option_make: "Verbose option, make it easier to follow what is going on for\\ndebugging purpose."
    agat_sp_filter_by_locus_distance_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out__output_ = "${in__output_}"
  }
}