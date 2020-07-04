class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/indelHistory.cwl
inputs:
- id: output_alignment
  doc: Instead of a summary of indels only, output an alignment in FASTA format of
    sequences for all ancestral and leaf nodes.
  type: boolean
  inputBinding:
    prefix: --output-alignment
- id: read_history
  doc: Read an indel history directly from the specified file.  Useful for debugging.  The
    alignment and tree arguments are not required; however in an alignment is given
    with --read-history and --output-alignment, then actual bases can be output for
    leaf species.
  type: string
  inputBinding:
    prefix: --read-history
- id: i_a_names
  doc: Assume ancestral sequences in alignment.fa are named according to the convention
    used by Mathieu Blanchette's inferAncestors program, e.g., "RAT+MOUSE+RABBIT+"
    for the last common ancestor of "rat", "mouse", and "rabbit".
  type: boolean
  inputBinding:
    prefix: --ia-names
- id: alignment_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: tree_dot_mod
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs: []
cwlVersion: v1.1
baseCommand:
- indelHistory
