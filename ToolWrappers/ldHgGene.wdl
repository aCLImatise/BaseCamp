version 1.0

task LdHgGene {
  input {
    Boolean? bin
    Boolean? no_bin
    String? exon
    Boolean? old_table
    Boolean? noncoding
    Boolean? gtf
    Boolean? pred_tab
    Boolean? require_cds
    File? out
    String? gene_pred_ext
    Boolean? implied_stop_after_cds
    String database
    String table
    File file
  }
  command <<<
    ldHgGene \
      ~{database} \
      ~{table} \
      ~{file} \
      ~{if (bin) then "-bin" else ""} \
      ~{if (no_bin) then "-nobin" else ""} \
      ~{if defined(exon) then ("-exon " +  '"' + exon + '"') else ""} \
      ~{if (old_table) then "-oldTable" else ""} \
      ~{if (noncoding) then "-noncoding" else ""} \
      ~{if (gtf) then "-gtf" else ""} \
      ~{if (pred_tab) then "-predTab" else ""} \
      ~{if (require_cds) then "-requireCDS" else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(gene_pred_ext) then ("-genePredExt " +  '"' + gene_pred_ext + '"') else ""} \
      ~{if (implied_stop_after_cds) then "-impliedStopAfterCds" else ""}
  >>>
  parameter_meta {
    bin: "Add bin column (now the default)"
    no_bin: "don't add binning (you probably don't want this)"
    exon: "Sets type field for exons to specific value"
    old_table: "Don't overwrite what's already in table"
    noncoding: "Forces whole prediction to be UTR"
    gtf: "input is GTF, stop codon is not in CDS"
    pred_tab: "input is already in genePredTab format"
    require_cds: "discard genes that don't have CDS annotation"
    out: "write output, in genePred format, instead of loading\\ntable. Database is ignored."
    gene_pred_ext: "a extended genePred, including frame\\ninformation and gene name"
    implied_stop_after_cds: "- implied stop codon in GFF/GTF after CDS"
    database: ""
    table: ""
    file: ""
  }
  output {
    File out_stdout = stdout()
  }
}