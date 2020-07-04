version 1.0

task TangoTransfer {
  input {
    String? ignore_unc_rank
    String? orf_tax_out
    String? cpus
    String? chunksize
    String orf_taxonomy
    String gff
    String contig_taxonomy
  }
  command <<<
    tango transfer \
      ~{orf_taxonomy} \
      ~{gff} \
      ~{contig_taxonomy} \
      ~{if defined(ignore_unc_rank) then ("--ignore_unc_rank " +  '"' + ignore_unc_rank + '"') else ""} \
      ~{if defined(orf_tax_out) then ("--orf_tax_out " +  '"' + orf_tax_out + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""} \
      ~{if defined(chunksize) then ("--chunksize " +  '"' + chunksize + '"') else ""}
  >>>
  parameter_meta {
    ignore_unc_rank: "Ignore ORFs unclassified at <rank>"
    orf_tax_out: "Also transfer taxonomy back to ORFs and output to file"
    cpus: "Number of cpus to use when transferring taxonomy to contigs"
    chunksize: "Size of chunks sent to process pool. For large input files using a large chunksize can make the job complete much faster than using the default value of 1."
    orf_taxonomy: "Taxonomy assigned to ORFs (ORF ids in first column)"
    gff: "GFF or file with contig id in first column and ORF id in second column"
    contig_taxonomy: "Output file with assigned taxonomy for contigs"
  }
}