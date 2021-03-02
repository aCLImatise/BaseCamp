version 1.0

task AgatSpFunctionalStatisticspl {
  input {
    File? gff
    Int? gs
    File? file_where_written
    String agat_sp_functional_statistics_do_tpl
  }
  command <<<
    agat_sp_functional_statistics_pl \
      ~{agat_sp_functional_statistics_do_tpl} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(gs) then ("--gs " +  '"' + gs + '"') else ""} \
      ~{if defined(file_where_written) then ("--output " +  '"' + file_where_written + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gff: "Input GTF/GFF file."
    gs: "This option inform about the genome size in oder to compute more\\nstatistics. You can give the size in Nucleotide or directly the\\nfasta file."
    file_where_written: "File where will be written the result. If no output file is\\nspecified, the output will be written to STDOUT."
    agat_sp_functional_statistics_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_file_where_written = "${in_file_where_written}"
  }
}