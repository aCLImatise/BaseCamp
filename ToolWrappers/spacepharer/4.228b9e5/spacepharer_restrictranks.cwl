class: CommandLineTool
id: spacepharer_restrictranks.cwl
inputs:
- id: in_rank_min_seq_ids
  doc: "Comma-separated sequence identity thresholds to restrict ranks to:\nspecies,\
    \ genus, family, order, class, phylum, kingdom, superkingdom [0.86,0.84,0.82,0.80,0.78,0.76,0.74,0.72]"
  type: long?
  inputBinding:
    prefix: --rank-min-seq-ids
- id: in_tax_lineage
  doc: "0: don't show, 1: add all lineage names, 2: add all lineage taxids [0]"
  type: long?
  inputBinding:
    prefix: --tax-lineage
- id: in_lca_ranks
  doc: Add column with specified ranks (',' separated) []
  type: string?
  inputBinding:
    prefix: --lca-ranks
- id: in_compressed
  doc: Write compressed output [0]
  type: long?
  inputBinding:
    prefix: --compressed
- id: in_threads
  doc: Number of CPU-cores used (all by default) [8]
  type: long?
  inputBinding:
    prefix: --threads
- id: in_verbosity_level_errors
  doc: 'Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]'
  type: long?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/spacepharer:4.228b9e5--h2d02072_0
cwlVersion: v1.1
baseCommand:
- spacepharer
- restrictranks
