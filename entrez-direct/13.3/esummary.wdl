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
    String abstract
    String bioc
    String medline
    String structure
    String taxonomy
  }
  command <<<
    esummary \
      ~{abstract} \
      ~{bioc} \
      ~{medline} \
      ~{structure} \
      ~{taxonomy} \
      ~{true="-format" false="" format} \
      ~{true="-mode" false="" mode} \
      ~{true="-style" false="" style} \
      ~{true="-db" false="" db} \
      ~{true="-id" false="" id} \
      ~{true="-seq_start" false="" seq_start} \
      ~{true="-seq_stop" false="" seq_stop} \
      ~{true="-strand" false="" strand} \
      ~{true="-revcomp" false="" rev_comp} \
      ~{true="-chr_start" false="" chr_start} \
      ~{true="-chr_stop" false="" chr_stop} \
      ~{true="-complexity" false="" complexity} \
      ~{true="-extend" false="" extend} \
      ~{true="-extrafeat" false="" extra_feat} \
      ~{true="-start" false="" start} \
      ~{true="-stop" false="" stop} \
      ~{true="-raw" false="" raw} \
      ~{true="-json" false="" json}
  >>>
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
    abstract: "Abstract"
    bioc: "PubTator Central BioC XML"
    medline: "MEDLINE"
    structure: "mmdb                        Ncbi-mime-asn1 strucseq ASN.1 native                      MMDB Report native             xml      RecordSet XML"
    taxonomy: "native                      Taxonomy List native             xml      TaxaSet XML"
  }
}