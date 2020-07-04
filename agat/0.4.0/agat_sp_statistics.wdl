version 1.0

task AgatSpStatistics.pl {
  input {
    String? gff
    String? gs
    String? when_option_used
    String? verbose
    String? file_where_written
  }
  command <<<
    agat_sp_statistics.pl \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(gs) then ("--gs " +  '"' + gs + '"') else ""} \
      ~{if defined(when_option_used) then ("-d " +  '"' + when_option_used + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(file_where_written) then ("--output " +  '"' + file_where_written + '"') else ""}
  >>>
  parameter_meta {
    gff: "Input GTF/GFF file."
    gs: "This option inform about the genome size in oder to compute more statistics. You can give the size in Nucleotide or directly the fasta file."
    when_option_used: "When this option is used, an histogram of distribution of the features will be printed in pdf files. (d means distribution, p means plot)."
    verbose: "Verbose option. To modify verbosity. Default is 1. 0 is quiet, 2 and 3 are increasing verbosity."
    file_where_written: "File where will be written the result. If no output file is specified, the output will be written to STDOUT."
  }
}