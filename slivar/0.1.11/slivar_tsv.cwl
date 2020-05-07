class: CommandLineTool
id: slivar_tsv.cwl
inputs:
- id: vcf
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: ped
  doc: required ped file describing the trios in the VCF
  type: string
  inputBinding:
    prefix: --ped
- id: csq_field
  doc: INFO field containing the gene name and impact. Usually CSQ or BCSQ
  type: string
  inputBinding:
    prefix: --csq-field
- id: csq_column
  doc: CSQ sub-field(s) to extract (in addition to gene, impact, transcript). may
    be specified multiple times.
  type: string
  inputBinding:
    prefix: --csq-column
- id: sample_field
  doc: INFO field(s) that contains list of samples that have passed previous filters.
  type: string
  inputBinding:
    prefix: --sample-field
- id: gene_description
  doc: tab-separated lookup of gene (column 1) to description (column 2) to add to
    output. the gene is case-sensitive. can be specified multiple times
  type: string
  inputBinding:
    prefix: --gene-description
- id: impact_order
  doc: ordering of impacts to override the default (https://raw.githubusercontent.com/brentp/slivar/master/src/slivarpkg/default-order.txt)
  type: string
  inputBinding:
    prefix: --impact-order
- id: info_field
  doc: INFO field(s) that should be added to output (e.g. gnomad_popmax_af)
  type: string
  inputBinding:
    prefix: --info-field
- id: out
  doc: 'path to output tab-separated file (default: /dev/stdout)'
  type: string
  inputBinding:
    prefix: --out
outputs: []
cwlVersion: v1.1
baseCommand:
- slivar
- tsv
