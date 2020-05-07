class: CommandLineTool
id: indelHistory.cwl
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
outputs: []
cwlVersion: v1.1
baseCommand:
- indelHistory
