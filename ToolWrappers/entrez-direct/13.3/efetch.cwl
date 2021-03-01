class: CommandLineTool
id: efetch.cwl
inputs:
- id: in_format
  doc: Format of record or report
  type: boolean?
  inputBinding:
    prefix: -format
- id: in_mode
  doc: text, xml, asn.1, json
  type: boolean?
  inputBinding:
    prefix: -mode
- id: in_style
  doc: withparts, conwithfeat
  type: boolean?
  inputBinding:
    prefix: -style
- id: in_db
  doc: Database name
  type: boolean?
  inputBinding:
    prefix: -db
- id: in_id
  doc: Unique identifier or accession number
  type: boolean?
  inputBinding:
    prefix: -id
- id: in_seq_start
  doc: First sequence position to retrieve
  type: boolean?
  inputBinding:
    prefix: -seq_start
- id: in_seq_stop
  doc: Last sequence position to retrieve
  type: boolean?
  inputBinding:
    prefix: -seq_stop
- id: in_strand
  doc: 1 = forward DNA strand, 2 = reverse complement
  type: boolean?
  inputBinding:
    prefix: -strand
- id: in_rev_comp
  doc: Shortcut for strand 2
  type: boolean?
  inputBinding:
    prefix: -revcomp
- id: in_chr_start
  doc: Sequence range from 0-based coordinates
  type: boolean?
  inputBinding:
    prefix: -chr_start
- id: in_chr_stop
  doc: in gene docsum GenomicInfoType object
  type: boolean?
  inputBinding:
    prefix: -chr_stop
- id: in_complexity
  doc: 0 = default, 1 = bioseq, 3 = nuc-prot set
  type: boolean?
  inputBinding:
    prefix: -complexity
- id: in_extend
  doc: Extend sequence retrieval in both directions
  type: boolean?
  inputBinding:
    prefix: -extend
- id: in_extra_feat
  doc: Bit flag specifying extra features
  type: boolean?
  inputBinding:
    prefix: -extrafeat
- id: in_start
  doc: First record to fetch
  type: boolean?
  inputBinding:
    prefix: -start
- id: in_stop
  doc: Last record to fetch
  type: boolean?
  inputBinding:
    prefix: -stop
- id: in_raw
  doc: Skip database-specific XML modifications
  type: boolean?
  inputBinding:
    prefix: -raw
- id: in_json
  doc: Convert adjusted XML output to JSON
  type: boolean?
  inputBinding:
    prefix: -json
- id: in_full
  doc: Same as native except for mesh
  type: string
  inputBinding:
    position: 2
- id: in_uid
  doc: Unique Identifier List
  type: string
  inputBinding:
    position: 3
- id: in_url
  doc: Entrez URL
  type: string
  inputBinding:
    position: 4
- id: in_xml
  doc: Same as -format full -mode xml
  type: string
  inputBinding:
    position: 5
- id: in_bio_project
  doc: native                      BioProject Report
  type: string
  inputBinding:
    position: 6
- id: in_xml_recordset_xml
  doc: xml      RecordSet XML
  type: string
  inputBinding:
    position: 7
- id: in_bio_sample
  doc: native                      BioSample Report
  type: string
  inputBinding:
    position: 8
- id: in_xml_biosampleset_xml
  doc: xml      BioSampleSet XML
  type: string
  inputBinding:
    position: 9
- id: in_biosystems
  doc: native             xml      Sys-set XML
  type: string
  inputBinding:
    position: 10
- id: in_clin_var
  doc: variation                   Older Format
  type: string
  inputBinding:
    position: 11
- id: in_variation_id
  doc: Transition Format
  type: string
  inputBinding:
    position: 12
- id: in_vcv
  doc: VCV Report
  type: string
  inputBinding:
    position: 13
- id: in_clin_varset
  doc: RCV Report
  type: string
  inputBinding:
    position: 14
- id: in_gds
  doc: native             xml      RecordSet XML
  type: string
  inputBinding:
    position: 15
- id: in_summary
  doc: Summary
  type: string
  inputBinding:
    position: 16
- id: in_gene
  doc: full_report                 Detailed Report
  type: string
  inputBinding:
    position: 17
- id: in_gene_table
  doc: Gene Table
  type: string
  inputBinding:
    position: 18
- id: in_tabular
  doc: Tabular Report
  type: string
  inputBinding:
    position: 22
- id: in_alignmentscores_alignment_scores
  doc: alignmentscores             Alignment Scores
  type: string
  inputBinding:
    position: 23
- id: in_fast_a
  doc: FASTA
  type: string
  inputBinding:
    position: 24
- id: in_homologene_report
  doc: Homologene Report
  type: string
  inputBinding:
    position: 25
- id: in_mesh
  doc: full                        Full Record
  type: string
  inputBinding:
    position: 29
- id: in_nlm_catalog
  doc: native                      Full Record
  type: string
  inputBinding:
    position: 32
- id: in_xml_nlmcatalogrecordset_xml
  doc: xml      NLMCatalogRecordSet XML
  type: string
  inputBinding:
    position: 33
- id: in_pmc
  doc: bioc                        PubTator Central BioC XML
  type: string
  inputBinding:
    position: 34
- id: in_var_43
  doc: MEDLINE
  type: string
  inputBinding:
    position: 35
- id: in_xml_pmcarticleset_xml
  doc: xml      pmc-articleset XML
  type: string
  inputBinding:
    position: 36
- id: in_pubmed
  doc: abstract                    Abstract
  type: string
  inputBinding:
    position: 37
- id: in_bioc
  doc: PubTator Central BioC XML
  type: string
  inputBinding:
    position: 38
- id: in_var_47
  doc: MEDLINE
  type: string
  inputBinding:
    position: 39
- id: in_acc
  doc: Accession Number
  type: string
  inputBinding:
    position: 0
- id: in_est
  doc: EST Report
  type: string
  inputBinding:
    position: 1
- id: in_fast_a_cds_aa
  doc: FASTA of CDS Products
  type: string
  inputBinding:
    position: 4
- id: in_fast_a_cds_na
  doc: FASTA of Coding Regions
  type: string
  inputBinding:
    position: 5
- id: in_ft
  doc: Feature Table
  type: string
  inputBinding:
    position: 6
- id: in_gbc
  doc: xml      INSDSet XML
  type: string
  inputBinding:
    position: 9
- id: in_gene_fast_a
  doc: FASTA of Gene
  type: string
  inputBinding:
    position: 10
- id: in_gpc
  doc: xml      INSDSet XML
  type: string
  inputBinding:
    position: 13
- id: in_gss
  doc: GSS Report
  type: string
  inputBinding:
    position: 14
- id: in_seq_id
  doc: Seq-id ASN.1
  type: string
  inputBinding:
    position: 19
- id: in_snp
  doc: json                        Reference SNP Report
  type: string
  inputBinding:
    position: 20
- id: in_sra
  doc: native             xml      EXPERIMENT_PACKAGE_SET XML
  type: string
  inputBinding:
    position: 21
- id: in_run_info
  doc: xml      SraRunInfo XML
  type: string
  inputBinding:
    position: 22
- id: in_structure
  doc: mmdb                        Ncbi-mime-asn1 strucseq ASN.1
  type: string
  inputBinding:
    position: 23
- id: in_taxonomy
  doc: native                      Taxonomy List
  type: string
  inputBinding:
    position: 26
- id: in_xml_taxaset_xml
  doc: xml      TaxaSet XML
  type: string
  inputBinding:
    position: 27
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- efetch
