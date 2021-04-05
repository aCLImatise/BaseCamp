class: CommandLineTool
id: bactopia_tools.py.cwl
inputs:
- id: in_bac_topia
  doc: Directory where Bactopia repository is stored.
  type: Directory?
  inputBinding:
    prefix: --bactopia
- id: in_force_rebuild
  doc: Force overwrite of existing Conda environments.
  type: boolean?
  inputBinding:
    prefix: --force_rebuild
- id: in_skip_cond_a
  doc: Skip all things conda related.
  type: boolean?
  inputBinding:
    prefix: --skip_conda
- id: in_verbose
  doc: Print debug related text.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_silent
  doc: Only critical errors will be printed.
  type: boolean?
  inputBinding:
    prefix: --silent
- id: in_var_5
  doc: Functional annotation using orthologous groups
  type: string
  inputBinding:
    position: 0
- id: in_var_6
  doc: Pairwise average nucleotide identity
  type: string
  inputBinding:
    position: 1
- id: in_var_7
  doc: Identify marker genes and assign taxonomic classifications
  type: string
  inputBinding:
    position: 2
- id: in_var_8
  doc: in silico typing of the H. influenzae cap locus
  type: string
  inputBinding:
    position: 3
- id: in_var_9
  doc: Identify positions of insertion sites
  type: string
  inputBinding:
    position: 4
- id: in_var_10
  doc: Trees based on Mash distances
  type: string
  inputBinding:
    position: 5
- id: in_var_11
  doc: 16s assembly, alignment and tree
  type: string
  inputBinding:
    position: 6
- id: in_var_12
  doc: Pan-genome with optional core-genome tree
  type: string
  inputBinding:
    position: 7
- id: in_var_13
  doc: Pan-genome with optional core-genome tree
  type: string
  inputBinding:
    position: 8
- id: in_var_14
  doc: A report summarizing Bactopia project
  type: string
  inputBinding:
    position: 9
- id: in_var_15
  doc: Functional annotation using orthologous groups
  type: string
  inputBinding:
    position: 0
- id: in_var_16
  doc: Pairwise average nucleotide identity
  type: string
  inputBinding:
    position: 1
- id: in_var_17
  doc: Identify marker genes and assign taxonomic classifications
  type: string
  inputBinding:
    position: 2
- id: in_var_18
  doc: in silico typing of the H. influenzae cap locus
  type: string
  inputBinding:
    position: 3
- id: in_var_19
  doc: Identify positions of insertion sites
  type: string
  inputBinding:
    position: 4
- id: in_var_20
  doc: Trees based on Mash distances
  type: string
  inputBinding:
    position: 5
- id: in_var_21
  doc: 16s assembly, alignment and tree
  type: string
  inputBinding:
    position: 6
- id: in_var_22
  doc: Pan-genome with optional core-genome tree
  type: string
  inputBinding:
    position: 7
- id: in_var_23
  doc: Pan-genome with optional core-genome tree
  type: string
  inputBinding:
    position: 8
- id: in_var_24
  doc: A report summarizing Bactopia project
  type: string
  inputBinding:
    position: 9
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/bactopia:1.6.4--0
cwlVersion: v1.1
baseCommand:
- bactopia-tools.py
