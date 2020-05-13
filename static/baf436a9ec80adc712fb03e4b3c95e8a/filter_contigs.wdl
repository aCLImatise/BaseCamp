version 1.0

task FilterContigs {
  input {
    String minMinContig
  }
  command <<<
    filter_contigs \
      ~{if defined(minMinContig) then ("--min_contig " +  '"' + minMinContig + '"') else ""}
  >>>
}