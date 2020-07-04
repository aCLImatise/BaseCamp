version 1.0

task Gtf2gff.pl {
  input {
    Boolean? print_exon
    Boolean? print_utr
    Boolean? print_intron
    Boolean? gff_three
    Boolean? include_stop_in_cds
    String out
  }
  command <<<
    gtf2gff.pl \
      ~{out} \
      ~{true="--printExon" false="" print_exon} \
      ~{true="--printUTR" false="" print_utr} \
      ~{true="--printIntron" false="" print_intron} \
      ~{true="--gff3" false="" gff_three} \
      ~{true="--includeStopInCDS" false="" include_stop_in_cds}
  >>>
  parameter_meta {
    print_exon: "print exon features (may include CDS and UTR parts)"
    print_utr: "print UTR features"
    print_intron: "print intron features"
    gff_three: "output in gff3 format"
    include_stop_in_cds: "include stop codon in the CDS"
    out: "gff output file"
  }
}