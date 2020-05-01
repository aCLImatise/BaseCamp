#!/usr/bin/env cwl-runner

baseCommand:
- efetch
class: CommandLineTool
cwlVersion: v1.0
id: efetch
inputs:
- doc: Abstract
  id: abstract
  inputBinding:
    position: 0
  type: string
- doc: PubTator Central BioC XML
  id: bioc
  inputBinding:
    position: 1
  type: string
- doc: MEDLINE
  id: medline
  inputBinding:
    position: 2
  type: string
- doc: asn.1    Pubmed-entry ASN.1
  id: native
  inputBinding:
    position: 3
  type: string
- doc: xml      PubmedArticleSet XML
  id: native
  inputBinding:
    position: 4
  type: string
- doc: json                        Reference SNP Report
  id: snp
  inputBinding:
    position: 0
  type: string
- doc: native             xml      EXPERIMENT_PACKAGE_SET XML runinfo            xml      SraRunInfo
    XML
  id: sra
  inputBinding:
    position: 1
  type: string
- doc: mmdb                        Ncbi-mime-asn1 strucseq ASN.1 native                      MMDB
    Report native             xml      RecordSet XML
  id: structure
  inputBinding:
    position: 2
  type: string
- doc: native                      Taxonomy List native             xml      TaxaSet
    XML
  id: taxonomy
  inputBinding:
    position: 3
  type: string
- doc: Format of record or report
  id: format
  inputBinding:
    prefix: -format
  type: boolean
- doc: text, xml, asn.1, json
  id: mode
  inputBinding:
    prefix: -mode
  type: boolean
- doc: withparts, conwithfeat
  id: style
  inputBinding:
    prefix: -style
  type: boolean
- doc: Database name
  id: db
  inputBinding:
    prefix: -db
  type: boolean
- doc: Unique identifier or accession number
  id: id
  inputBinding:
    prefix: -id
  type: boolean
- doc: First sequence position to retrieve
  id: seq_start
  inputBinding:
    prefix: -seq_start
  type: boolean
- doc: Last sequence position to retrieve
  id: seq_stop
  inputBinding:
    prefix: -seq_stop
  type: boolean
- doc: 1 = forward DNA strand, 2 = reverse complement
  id: strand
  inputBinding:
    prefix: -strand
  type: boolean
- doc: Shortcut for strand 2
  id: rev_comp
  inputBinding:
    prefix: -revcomp
  type: boolean
- doc: Sequence range from 0-based coordinates
  id: chr_start
  inputBinding:
    prefix: -chr_start
  type: boolean
- doc: in gene docsum GenomicInfoType object
  id: chr_stop
  inputBinding:
    prefix: -chr_stop
  type: boolean
- doc: 0 = default, 1 = bioseq, 3 = nuc-prot set
  id: complexity
  inputBinding:
    prefix: -complexity
  type: boolean
- doc: Extend sequence retrieval in both directions
  id: extend
  inputBinding:
    prefix: -extend
  type: boolean
- doc: Bit flag specifying extra features
  id: extra_feat
  inputBinding:
    prefix: -extrafeat
  type: boolean
- doc: First record to fetch
  id: start
  inputBinding:
    prefix: -start
  type: boolean
- doc: Last record to fetch
  id: stop
  inputBinding:
    prefix: -stop
  type: boolean
- doc: Skip database-specific XML modifications
  id: raw
  inputBinding:
    prefix: -raw
  type: boolean
- doc: Convert adjusted XML output to JSON
  id: json
  inputBinding:
    prefix: -json
  type: boolean
