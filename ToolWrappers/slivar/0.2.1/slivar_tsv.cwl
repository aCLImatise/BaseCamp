class: CommandLineTool
id: slivar_tsv.cwl
inputs:
- id: in_ped
  doc: required ped file describing the trios in the VCF
  type: File?
  inputBinding:
    prefix: --ped
- id: in_csq_field
  doc: INFO field containing the gene name and impact. Usually CSQ or BCSQ
  type: string?
  inputBinding:
    prefix: --csq-field
- id: in_csq_column
  doc: CSQ sub-field(s) to extract (in addition to gene, impact, transcript). may
    be specified multiple times.
  type: string?
  inputBinding:
    prefix: --csq-column
- id: in_sample_field
  doc: INFO field(s) that contains list of samples that have passed previous filters.
  type: string?
  inputBinding:
    prefix: --sample-field
- id: in_gene_description
  doc: tab-separated lookup of gene (column 1) to description (column 2) to add to
    output. the gene is case-sensitive. can be specified multiple times
  type: long?
  inputBinding:
    prefix: --gene-description
- id: in_impact_order
  doc: ordering of impacts to override the default (https://raw.githubusercontent.com/brentp/slivar/master/src/slivarpkg/default-order.txt)
  type: string?
  inputBinding:
    prefix: --impact-order
- id: in_info_field
  doc: INFO field(s) that should be added to output (e.g. gnomad_popmax_af)
  type: string?
  inputBinding:
    prefix: --info-field
- id: in_out
  doc: 'path to output tab-separated file (default: /dev/stdout)'
  type: File?
  inputBinding:
    prefix: --out
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: 'path to output tab-separated file (default: /dev/stdout)'
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/slivar:0.2.1--hecda079_0
cwlVersion: v1.1
baseCommand:
- slivar
- tsv
