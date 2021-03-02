class: CommandLineTool
id: pancake_addAli.cwl
inputs:
- id: in_pan_file
  doc: Name of PanCake Data Object File (required)
  type: File?
  inputBinding:
    prefix: --panfile
- id: in_output
  doc: output pangenome file (PAN_FILE will be unchanged)
  type: File?
  inputBinding:
    prefix: --output
- id: in_min_len
  doc: "minimum length of pairwise alignments to get included\n(DEFAULT=25)"
  type: long?
  inputBinding:
    prefix: --min_len
- id: in_no_self_alignments
  doc: "if set, skip pairwise alignments between regions on\nidentical chromosomes\
    \ (DEFAULT=False)\n"
  type: boolean?
  inputBinding:
    prefix: --no_self_alignments
- id: in_ali_file
  doc: Alignment File (BLAST or nucmer output)
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output pangenome file (PAN_FILE will be unchanged)
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- pancake
- addAli
