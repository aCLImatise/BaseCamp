class: CommandLineTool
id: mmseqs_lca.cwl
inputs:
- id: in_lca_ranks
  doc: Add column with specified ranks (',' separated) []
  type: string?
  inputBinding:
    prefix: --lca-ranks
- id: in_blacklist
  doc: Comma separated list of ignored taxa in LCA computation [12908:unclassified
    sequences,28384:other sequences]
  type: long?
  inputBinding:
    prefix: --blacklist
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
- lca
