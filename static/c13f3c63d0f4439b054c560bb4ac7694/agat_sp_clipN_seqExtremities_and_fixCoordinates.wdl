version 1.0

task AgatSpClipNSeqExtremitiesAndFixCoordinates.pl {
  input {
    String? gff
    String? fast_a
    Boolean? of
    Boolean? og
    String? o
  }
  command <<<
    agat_sp_clipN_seqExtremities_and_fixCoordinates.pl \
      ~{if defined(gff) then ("--gff " +  '"' + gff + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{true="--of" false="" of} \
      ~{true="--og" false="" og} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    gff: "Input GTF/GFF file."
    fast_a: "Input fasta file."
    of: "Output fixed fasta file. If no output file is specified, the output will be written to STDOUT."
    og: "Output fixed GFF file. If no output file is specified, the output will be written to STDOUT"
    o: ""
  }
}