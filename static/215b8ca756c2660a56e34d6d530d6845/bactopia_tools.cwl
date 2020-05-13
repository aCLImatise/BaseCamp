class: CommandLineTool
id: bactopia_tools.py.cwl
inputs:
- id: str
  doc: Name of the Bactopia tool to execute.
  type: string
  inputBinding:
    position: 0
- id: fast_ani
  doc: Pairwise average nucleotide identity
  type: string
  inputBinding:
    position: 0
- id: gt_db
  doc: Identify marker genes and assign taxonomic classifications
  type: string
  inputBinding:
    position: 1
- id: phylo_flash
  doc: 16s assembly, alignment and tree
  type: string
  inputBinding:
    position: 2
- id: roar_y
  doc: Pan-genome with optional core-genome tree.
  type: string
  inputBinding:
    position: 3
- id: summary
  doc: A report summarizing Bactopia project
  type: string
  inputBinding:
    position: 4
- id: bac_topia
  doc: Directory where Bactopia repository is stored.
  type: string
  inputBinding:
    prefix: --bactopia
outputs: []
cwlVersion: v1.1
baseCommand:
- bactopia-tools.py
