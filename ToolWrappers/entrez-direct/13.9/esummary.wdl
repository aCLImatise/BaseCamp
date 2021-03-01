version 1.0

task Esummary {
  input {
    Boolean? format
    Boolean? mode
    Boolean? style
    Boolean? db
    Boolean? id
    Boolean? seq_start
    Boolean? seq_stop
    Boolean? strand
    Boolean? rev_comp
    Boolean? chr_start
    Boolean? chr_stop
    Boolean? complexity
    Boolean? extend
    Boolean? extra_feat
    Boolean? start
    Boolean? stop
    Boolean? raw
    Boolean? json
    String full
    String uid
    String url
    String xml
    String bio_project
    String xml_recordset_xml
    String bio_sample
    String xml_biosampleset_xml
    String biosystems
    String clin_var
    String variation_id
    String vcv
    String clin_varset
    String gds
    String summary
    String gene
    String gene_table
    String tabular
    String alignmentscores_alignment_scores
    String fast_a
    String homologene_report
    String mesh
    String nlm_catalog
    String xml_nlmcatalogrecordset_xml
    String pmc
    String var_43
    String xml_pmcarticleset_xml
    String pubmed
    String bioc
    String var_47
    String acc
    String est
    String fast_a_cds_aa
    String fast_a_cds_na
    String ft
    String gbc
    String gene_fast_a
    String gpc
    String gss
    String seq_id
    String snp
    String sra
    String run_info
    String structure
    String taxonomy
    String xml_taxaset_xml
  }
  command <<<
    esummary \
      ~{full} \
      ~{uid} \
      ~{url} \
      ~{xml} \
      ~{bio_project} \
      ~{xml_recordset_xml} \
      ~{bio_sample} \
      ~{xml_biosampleset_xml} \
      ~{biosystems} \
      ~{clin_var} \
      ~{variation_id} \
      ~{vcv} \
      ~{clin_varset} \
      ~{gds} \
      ~{summary} \
      ~{gene} \
      ~{gene_table} \
      ~{tabular} \
      ~{alignmentscores_alignment_scores} \
      ~{fast_a} \
      ~{homologene_report} \
      ~{mesh} \
      ~{nlm_catalog} \
      ~{xml_nlmcatalogrecordset_xml} \
      ~{pmc} \
      ~{var_43} \
      ~{xml_pmcarticleset_xml} \
      ~{pubmed} \
      ~{bioc} \
      ~{var_47} \
      ~{acc} \
      ~{est} \
      ~{fast_a_cds_aa} \
      ~{fast_a_cds_na} \
      ~{ft} \
      ~{gbc} \
      ~{gene_fast_a} \
      ~{gpc} \
      ~{gss} \
      ~{seq_id} \
      ~{snp} \
      ~{sra} \
      ~{run_info} \
      ~{structure} \
      ~{taxonomy} \
      ~{xml_taxaset_xml} \
      ~{if (format) then "-format" else ""} \
      ~{if (mode) then "-mode" else ""} \
      ~{if (style) then "-style" else ""} \
      ~{if (db) then "-db" else ""} \
      ~{if (id) then "-id" else ""} \
      ~{if (seq_start) then "-seq_start" else ""} \
      ~{if (seq_stop) then "-seq_stop" else ""} \
      ~{if (strand) then "-strand" else ""} \
      ~{if (rev_comp) then "-revcomp" else ""} \
      ~{if (chr_start) then "-chr_start" else ""} \
      ~{if (chr_stop) then "-chr_stop" else ""} \
      ~{if (complexity) then "-complexity" else ""} \
      ~{if (extend) then "-extend" else ""} \
      ~{if (extra_feat) then "-extrafeat" else ""} \
      ~{if (start) then "-start" else ""} \
      ~{if (stop) then "-stop" else ""} \
      ~{if (raw) then "-raw" else ""} \
      ~{if (json) then "-json" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1"
  }
  parameter_meta {
    format: "Format of record or report"
    mode: "text, xml, asn.1, json"
    style: "withparts, conwithfeat"
    db: "Database name"
    id: "Unique identifier or accession number"
    seq_start: "First sequence position to retrieve"
    seq_stop: "Last sequence position to retrieve"
    strand: "1 = forward DNA strand, 2 = reverse complement"
    rev_comp: "Shortcut for strand 2"
    chr_start: "Sequence range from 0-based coordinates"
    chr_stop: "in gene docsum GenomicInfoType object"
    complexity: "0 = default, 1 = bioseq, 3 = nuc-prot set"
    extend: "Extend sequence retrieval in both directions"
    extra_feat: "Bit flag specifying extra features"
    start: "First record to fetch"
    stop: "Last record to fetch"
    raw: "Skip database-specific XML modifications"
    json: "Convert adjusted XML output to JSON"
    full: "Same as native except for mesh"
    uid: "Unique Identifier List"
    url: "Entrez URL"
    xml: "Same as -format full -mode xml"
    bio_project: "native                      BioProject Report"
    xml_recordset_xml: "xml      RecordSet XML"
    bio_sample: "native                      BioSample Report"
    xml_biosampleset_xml: "xml      BioSampleSet XML"
    biosystems: "native             xml      Sys-set XML"
    clin_var: "variation                   Older Format"
    variation_id: "Transition Format"
    vcv: "VCV Report"
    clin_varset: "RCV Report"
    gds: "native             xml      RecordSet XML"
    summary: "Summary"
    gene: "full_report                 Detailed Report"
    gene_table: "Gene Table"
    tabular: "Tabular Report"
    alignmentscores_alignment_scores: "alignmentscores             Alignment Scores"
    fast_a: "FASTA"
    homologene_report: "Homologene Report"
    mesh: "full                        Full Record"
    nlm_catalog: "native                      Full Record"
    xml_nlmcatalogrecordset_xml: "xml      NLMCatalogRecordSet XML"
    pmc: "bioc                        PubTator Central BioC XML"
    var_43: "MEDLINE"
    xml_pmcarticleset_xml: "xml      pmc-articleset XML"
    pubmed: "abstract                    Abstract"
    bioc: "PubTator Central BioC XML"
    var_47: "MEDLINE"
    acc: "Accession Number"
    est: "EST Report"
    fast_a_cds_aa: "FASTA of CDS Products"
    fast_a_cds_na: "FASTA of Coding Regions"
    ft: "Feature Table"
    gbc: "xml      INSDSet XML"
    gene_fast_a: "FASTA of Gene"
    gpc: "xml      INSDSet XML"
    gss: "GSS Report"
    seq_id: "Seq-id ASN.1"
    snp: "json                        Reference SNP Report"
    sra: "native             xml      EXPERIMENT_PACKAGE_SET XML"
    run_info: "xml      SraRunInfo XML"
    structure: "mmdb                        Ncbi-mime-asn1 strucseq ASN.1"
    taxonomy: "native                      Taxonomy List"
    xml_taxaset_xml: "xml      TaxaSet XML"
  }
  output {
    File out_stdout = stdout()
  }
}