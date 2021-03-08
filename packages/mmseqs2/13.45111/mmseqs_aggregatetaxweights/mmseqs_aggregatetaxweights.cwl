class: CommandLineTool
id: mmseqs_aggregatetaxweights.cwl
inputs:
- id: in_majority
  doc: minimal fraction of agreement among taxonomically assigned sequences of a set
    [0.500]
  type: double?
  inputBinding:
    prefix: --majority
- id: in_vote_mode
  doc: 'Mode of assigning weights to compute majority. 0: uniform, 1: minus log E-value,
    2: score [1]'
  type: long?
  inputBinding:
    prefix: --vote-mode
- id: in_lca_ranks
  doc: Add column with specified ranks (',' separated) []
  type: string?
  inputBinding:
    prefix: --lca-ranks
- id: in_tax_lineage
  doc: "0: don't show, 1: add all lineage names, 2: add all lineage taxids [0]"
  type: long?
  inputBinding:
    prefix: --tax-lineage
- id: in_compressed
  doc: Write compressed output [0]
  type: long?
  inputBinding:
    prefix: --compressed
- id: in_threads
  doc: Number of CPU-cores used (all by default) [2]
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
  dockerPull: quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0
cwlVersion: v1.1
baseCommand:
- mmseqs
- aggregatetaxweights
