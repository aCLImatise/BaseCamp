version 1.0

task AgatSpStatisticspl {
  input {
    File? gff
    Int? gs
    String? when_option_used
    Int? verbose
    File? file_where_written
    String agat_sp_statistics_do_tpl
  }
  command <<<
    agat_sp_statistics_pl \
      ~{agat_sp_statistics_do_tpl} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(gs) then ("--gs " +  '"' + gs + '"') else ""} \
      ~{if defined(when_option_used) then ("-d " +  '"' + when_option_used + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""} \
      ~{if defined(file_where_written) then ("--output " +  '"' + file_where_written + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/agat:0.6.0--pl526r35_0"
  }
  parameter_meta {
    gff: "Input GTF/GFF file."
    gs: "This option inform about the genome size in oder to compute more\\nstatistics. You can give the size in Nucleotide or directly the\\nfasta file."
    when_option_used: "When this option is used, an histogram of distribution of the\\nfeatures will be printed in pdf files. (d means distribution, p\\nmeans plot)."
    verbose: "Verbose option. To modify verbosity. Default is 1. 0 is quiet, 2\\nand 3 are increasing verbosity."
    file_where_written: "File where will be written the result. If no output file is\\nspecified, the output will be written to STDOUT."
    agat_sp_statistics_do_tpl: "Description:"
  }
  output {
    File out_stdout = stdout()
    File out_file_where_written = "${in_file_where_written}"
  }
}