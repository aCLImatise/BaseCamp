version 1.0

task AgatSpFunctionalStatistics.pl {
  input {
    String? gff
    String? gs
    String? file_where_written
  }
  command <<<
    agat_sp_functional_statistics.pl \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(gs) then ("--gs " +  '"' + gs + '"') else ""} \
      ~{if defined(file_where_written) then ("--output " +  '"' + file_where_written + '"') else ""}
  >>>
  parameter_meta {
    gff: "Input GTF/GFF file."
    gs: "This option inform about the genome size in oder to compute more statistics. You can give the size in Nucleotide or directly the fasta file."
    file_where_written: "File where will be written the result. If no output file is specified, the output will be written to STDOUT."
  }
}