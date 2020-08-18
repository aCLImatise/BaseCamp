class: CommandLineTool
id: ../../../pancake_addAli.cwl
inputs:
- id: pan_file
  doc: Name of PanCake Data Object File (required)
  type: string
  inputBinding:
    prefix: --panfile
- id: output
  doc: output pangenome file (PAN_FILE will be unchanged)
  type: string
  inputBinding:
    prefix: --output
- id: min_len
  doc: minimum length of pairwise alignments to get included (DEFAULT=25)
  type: long
  inputBinding:
    prefix: --min_len
- id: no_self_alignments
  doc: if set, skip pairwise alignments between regions on identical chromosomes (DEFAULT=False)
  type: boolean
  inputBinding:
    prefix: --no_self_alignments
- id: ali_file
  doc: Alignment File (BLAST or nucmer output)
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- pancake
- addAli
