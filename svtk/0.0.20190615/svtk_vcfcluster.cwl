class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/svtk_vcfcluster.cwl
inputs:
- id: region
  doc: Restrict clustering to genomic region.
  type: string
  inputBinding:
    prefix: --region
- id: dist
  doc: Maximum clustering distance. Suggested to use max of median + 7*MAD over samples.
    [500]
  type: string
  inputBinding:
    prefix: --dist
- id: frac
  doc: Minimum reciprocal overlap between variants. [0.1]
  type: string
  inputBinding:
    prefix: --frac
- id: blacklist
  doc: Tabix indexed bed of blacklisted regions. Any SV with a breakpoint falling
    inside one of these regions is filtered from output.
  type: string
  inputBinding:
    prefix: --blacklist
- id: sv_size
  doc: Minimum SV size to report for intrachromosomal events. [0]
  type: string
  inputBinding:
    prefix: --svsize
- id: prefix
  doc: Prefix for merged variant IDs. [MERGED]
  type: string
  inputBinding:
    prefix: --prefix
- id: sv_types
  doc: Comma delimited list of svtypes to cluster [DEL,DUP,INV,BND]
  type: string
  inputBinding:
    prefix: --svtypes
- id: ignore_sv_types
  doc: Ignore svtypes when clustering.
  type: boolean
  inputBinding:
    prefix: --ignore-svtypes
- id: sample_overlap
  doc: Minimum sample overlap for two variants to be clustered together.
  type: string
  inputBinding:
    prefix: --sample-overlap
- id: preserve_ids
  doc: Include list of IDs of constituent records in each cluster.
  type: boolean
  inputBinding:
    prefix: --preserve-ids
- id: preserve_genotypes
  doc: In a set of clustered variants, report best (highest GQ) non-reference genotype
    when available.
  type: boolean
  inputBinding:
    prefix: --preserve-genotypes
- id: preserve_header
  doc: Use header from clustering VCFs
  type: boolean
  inputBinding:
    prefix: --preserve-header
outputs: []
cwlVersion: v1.1
baseCommand:
- svtk
- vcfcluster
