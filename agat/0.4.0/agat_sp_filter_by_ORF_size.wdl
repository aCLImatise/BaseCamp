version 1.0

task AgatSpFilterByORFSize.pl {
  input {
    Boolean? verbose_useful_debugging
    String? outfile
    String? gff
  }
  command <<<
    agat_sp_filter_by_ORF_size.pl \
      ~{true="-v" false="" verbose_useful_debugging} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""}
  >>>
  parameter_meta {
    verbose_useful_debugging: "Verbose. Useful for debugging purpose. Bolean"
    outfile: "Output GFF file. If no output file is specified, the output will be written to STDOUT."
    gff: ""
  }
}