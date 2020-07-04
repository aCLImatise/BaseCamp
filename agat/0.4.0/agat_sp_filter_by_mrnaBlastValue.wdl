version 1.0

task AgatSpFilterByMrnaBlastValue.pl {
  input {
    Boolean? gff
    String? blast
    Boolean? outfile
  }
  command <<<
    agat_sp_filter_by_mrnaBlastValue.pl \
      ~{true="--gff" false="" gff} \
      ~{if defined(blast) then ("--blast " +  '"' + blast + '"') else ""} \
      ~{true="--outfile" false="" outfile}
  >>>
  parameter_meta {
    gff: "Input GTF/GFF file."
    blast: "list of the all-vs-all blast file (outfmt 6, blastp)"
    outfile: "The name of the output file. By default the output is the standard output."
  }
}