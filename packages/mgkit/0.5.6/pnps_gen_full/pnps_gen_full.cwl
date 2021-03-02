class: CommandLineTool
id: pnps_gen_full.cwl
inputs:
- id: in_taxonomy
  doc: Taxonomy file  [required]
  type: File?
  inputBinding:
    prefix: --taxonomy
- id: in_snp_data
  doc: SNP data, output of `snp_parser`  [required]
  type: File?
  inputBinding:
    prefix: --snp-data
- id: in_rank
  doc: "[superkingdom|kingdom|phylum|class|order|family|genus|species|None]\nTaxonomic\
    \ rank  [default: order]"
  type: boolean?
  inputBinding:
    prefix: --rank
- id: in_min_num
  doc: RANGE     Minimum number of samples with a pN/pS to
  type: long?
  inputBinding:
    prefix: --min-num
- id: in_min_cov
  doc: "RANGE     Minimum coverage for SNPs to be accepted\n[default: 4]"
  type: long?
  inputBinding:
    prefix: --min-cov
- id: in_tax_on_ids
  doc: 'Taxon IDs to include  [default: 2]'
  type: long?
  inputBinding:
    prefix: --taxon_ids
- id: in_use_uid
  doc: "Use uids from the GFF file instead of\ngene_id as genes  [default: False]"
  type: boolean?
  inputBinding:
    prefix: --use-uid
- id: in_gene_map
  doc: Dictionary to map *gene_id* to another ID
  type: File?
  inputBinding:
    prefix: --gene-map
- id: in_two_columns
  doc: "gene-map is a two columns table with\nrepeated keys"
  type: boolean?
  inputBinding:
    prefix: --two-columns
- id: in_separator
  doc: "column separator for gene-map file\n[default:   ]"
  type: File?
  inputBinding:
    prefix: --separator
- id: in_lineage
  doc: "Use lineage string instead of taxon_id\n[default: False]"
  type: boolean?
  inputBinding:
    prefix: --lineage
- id: in_only_ps
  doc: 'Only calculate pS values  [default: False]'
  type: boolean?
  inputBinding:
    prefix: --only-ps
- id: in_only_pn
  doc: 'Only calculate pN values  [default: False]'
  type: boolean?
  inputBinding:
    prefix: --only-pn
- id: in_txt_file
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- pnps-gen
- full
