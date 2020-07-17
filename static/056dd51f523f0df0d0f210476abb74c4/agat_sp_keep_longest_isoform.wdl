version 1.0

task AgatSpKeepLongestIsoform.pl {
  input {
    String? gff
    String? file_where_written
  }
  command <<<
    agat_sp_keep_longest_isoform.pl \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(file_where_written) then ("--output " +  '"' + file_where_written + '"') else ""}
  >>>
  parameter_meta {
    gff: "GTF/GFF file."
    file_where_written: "File where will be written the result. If no output file is specified, the output will be written to STDOUT."
  }
}