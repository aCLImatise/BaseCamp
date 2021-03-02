version 1.0

task ContigtaxTransfer {
  input {
    String? ignore_unc_rank
    File? orf_tax_out
    Int? cpus
    String orf_taxonomy
    String gff
    String contig_taxonomy
    String contigs
  }
  command <<<
    contigtax transfer \
      ~{orf_taxonomy} \
      ~{gff} \
      ~{contig_taxonomy} \
      ~{contigs} \
      ~{if defined(ignore_unc_rank) then ("--ignore_unc_rank " +  '"' + ignore_unc_rank + '"') else ""} \
      ~{if defined(orf_tax_out) then ("--orf_tax_out " +  '"' + orf_tax_out + '"') else ""} \
      ~{if defined(cpus) then ("--cpus " +  '"' + cpus + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    ignore_unc_rank: "Ignore ORFs unclassified at <rank>"
    orf_tax_out: "Also transfer taxonomy back to ORFs and output to file"
    cpus: "Number of cpus to use when transferring taxonomy to"
    orf_taxonomy: "Taxonomy assigned to ORFs (ORF ids in first column)"
    gff: "GFF or file with contig id in first column and ORF id\\nin second column"
    contig_taxonomy: "Output file with assigned taxonomy for contigs"
    contigs: "-c CHUNKSIZE, --chunksize CHUNKSIZE"
  }
  output {
    File out_stdout = stdout()
    File out_orf_tax_out = "${in_orf_tax_out}"
  }
}