version 1.0

task Gtf2gffpl {
  input {
    Boolean? print_exon
    Boolean? print_utr
    Boolean? print_intron
    Boolean? gff_three
    Boolean? include_stop_in_cds
    String out
  }
  command <<<
    gtf2gff_pl \
      ~{out} \
      ~{if (print_exon) then "--printExon" else ""} \
      ~{if (print_utr) then "--printUTR" else ""} \
      ~{if (print_intron) then "--printIntron" else ""} \
      ~{if (gff_three) then "--gff3" else ""} \
      ~{if (include_stop_in_cds) then "--includeStopInCDS" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    print_exon: "print exon features (may include CDS and UTR parts)"
    print_utr: "print UTR features"
    print_intron: "print intron features"
    gff_three: "output in gff3 format"
    include_stop_in_cds: "include stop codon in the CDS"
    out: "gff output file"
  }
  output {
    File out_stdout = stdout()
  }
}