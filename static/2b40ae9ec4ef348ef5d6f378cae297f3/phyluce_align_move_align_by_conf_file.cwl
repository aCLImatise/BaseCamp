class: CommandLineTool
id: phyluce_align_move_align_by_conf_file.cwl
inputs:
- id: conf
  doc: The configuration file giving locus names
  type: string
  inputBinding:
    prefix: --conf
- id: alignments
  doc: The input directory for the alignments
  type: string
  inputBinding:
    prefix: --alignments
- id: output
  doc: The output directory for the alignments
  type: string
  inputBinding:
    prefix: --output
- id: sections
  doc: The sections of files to use as a filter (defaults to all)
  type: string[]
  inputBinding:
    prefix: --sections
- id: opposite
  doc: Move alignments based on what is NOT in the conf file
  type: boolean
  inputBinding:
    prefix: --opposite
- id: extension
  doc: The extension of the files to move
  type: string
  inputBinding:
    prefix: --extension
outputs: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_move_align_by_conf_file
