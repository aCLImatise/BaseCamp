class: CommandLineTool
id: efetch.cwl
inputs:
- id: abstract
  doc: Abstract
  type: string
  inputBinding:
    position: 0
- id: bioc
  doc: PubTator Central BioC XML
  type: string
  inputBinding:
    position: 1
- id: medline
  doc: MEDLINE
  type: string
  inputBinding:
    position: 2
- id: native
  doc: asn.1    Pubmed-entry ASN.1
  type: string
  inputBinding:
    position: 3
- id: native
  doc: xml      PubmedArticleSet XML
  type: string
  inputBinding:
    position: 4
- id: snp
  doc: json                        Reference SNP Report
  type: string
  inputBinding:
    position: 0
- id: sra
  doc: native             xml      EXPERIMENT_PACKAGE_SET XML runinfo            xml      SraRunInfo
    XML
  type: string
  inputBinding:
    position: 1
- id: structure
  doc: mmdb                        Ncbi-mime-asn1 strucseq ASN.1 native                      MMDB
    Report native             xml      RecordSet XML
  type: string
  inputBinding:
    position: 2
- id: taxonomy
  doc: native                      Taxonomy List native             xml      TaxaSet
    XML
  type: string
  inputBinding:
    position: 3
- id: format
  doc: Format of record or report
  type: boolean
  inputBinding:
    prefix: -format
- id: mode
  doc: text, xml, asn.1, json
  type: boolean
  inputBinding:
    prefix: -mode
- id: style
  doc: withparts, conwithfeat
  type: boolean
  inputBinding:
    prefix: -style
- id: db
  doc: Database name
  type: boolean
  inputBinding:
    prefix: -db
- id: id
  doc: Unique identifier or accession number
  type: boolean
  inputBinding:
    prefix: -id
- id: seq_start
  doc: First sequence position to retrieve
  type: boolean
  inputBinding:
    prefix: -seq_start
- id: seq_stop
  doc: Last sequence position to retrieve
  type: boolean
  inputBinding:
    prefix: -seq_stop
- id: strand
  doc: 1 = forward DNA strand, 2 = reverse complement
  type: boolean
  inputBinding:
    prefix: -strand
- id: rev_comp
  doc: Shortcut for strand 2
  type: boolean
  inputBinding:
    prefix: -revcomp
- id: chr_start
  doc: Sequence range from 0-based coordinates
  type: boolean
  inputBinding:
    prefix: -chr_start
- id: chr_stop
  doc: in gene docsum GenomicInfoType object
  type: boolean
  inputBinding:
    prefix: -chr_stop
- id: complexity
  doc: 0 = default, 1 = bioseq, 3 = nuc-prot set
  type: boolean
  inputBinding:
    prefix: -complexity
- id: extend
  doc: Extend sequence retrieval in both directions
  type: boolean
  inputBinding:
    prefix: -extend
- id: extra_feat
  doc: Bit flag specifying extra features
  type: boolean
  inputBinding:
    prefix: -extrafeat
- id: start
  doc: First record to fetch
  type: boolean
  inputBinding:
    prefix: -start
- id: stop
  doc: Last record to fetch
  type: boolean
  inputBinding:
    prefix: -stop
- id: raw
  doc: Skip database-specific XML modifications
  type: boolean
  inputBinding:
    prefix: -raw
- id: json
  doc: Convert adjusted XML output to JSON
  type: boolean
  inputBinding:
    prefix: -json
outputs: []
cwlVersion: v1.1
baseCommand:
- efetch
