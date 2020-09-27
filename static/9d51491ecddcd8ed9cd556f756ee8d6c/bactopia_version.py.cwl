class: CommandLineTool
id: bactopia_version.py.cwl
inputs:
- id: in_bac_topia
  doc: Directory where Bactopia repository is stored.
  type: Directory
  inputBinding:
    prefix: --bactopia
- id: in_str
  doc: Name of the Bactopia tool to execute.
  type: string
  inputBinding:
    position: 0
- id: in_fast_ani
  doc: Pairwise average nucleotide identity
  type: string
  inputBinding:
    position: 0
- id: in_gt_db
  doc: Identify marker genes and assign taxonomic classifications
  type: string
  inputBinding:
    position: 1
- id: in_phylo_flash
  doc: 16s assembly, alignment and tree
  type: string
  inputBinding:
    position: 2
- id: in_roar_y
  doc: Pan-genome with optional core-genome tree.
  type: string
  inputBinding:
    position: 3
- id: in_summary
  doc: A report summarizing Bactopia project
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bactopia-version.py
