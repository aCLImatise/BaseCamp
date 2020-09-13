class: CommandLineTool
id: ../../../svtk_vcfcluster.cwl
inputs:
- id: in_region
  doc: Restrict clustering to genomic region.
  type: string
  inputBinding:
    prefix: --region
- id: in_dist
  doc: "Maximum clustering distance. Suggested to use max of\nmedian + 7*MAD over\
    \ samples. [500]"
  type: long
  inputBinding:
    prefix: --dist
- id: in_frac
  doc: Minimum reciprocal overlap between variants. [0.1]
  type: double
  inputBinding:
    prefix: --frac
- id: in_blacklist
  doc: "Tabix indexed bed of blacklisted regions. Any SV with\na breakpoint falling\
    \ inside one of these regions is\nfiltered from output."
  type: string
  inputBinding:
    prefix: --blacklist
- id: in_sv_size
  doc: "Minimum SV size to report for intrachromosomal events.\n[0]"
  type: long
  inputBinding:
    prefix: --svsize
- id: in_prefix
  doc: Prefix for merged variant IDs. [MERGED]
  type: string
  inputBinding:
    prefix: --prefix
- id: in_sv_types
  doc: "Comma delimited list of svtypes to cluster\n[DEL,DUP,INV,BND]"
  type: string
  inputBinding:
    prefix: --svtypes
- id: in_ignore_sv_types
  doc: Ignore svtypes when clustering.
  type: boolean
  inputBinding:
    prefix: --ignore-svtypes
- id: in_sample_overlap
  doc: "Minimum sample overlap for two variants to be\nclustered together."
  type: string
  inputBinding:
    prefix: --sample-overlap
- id: in_preserve_ids
  doc: Include list of IDs of constituent records in each
  type: boolean
  inputBinding:
    prefix: --preserve-ids
- id: in_preserve_header
  doc: Use header from clustering VCFs
  type: boolean
  inputBinding:
    prefix: --preserve-header
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- svtk
- vcfcluster
