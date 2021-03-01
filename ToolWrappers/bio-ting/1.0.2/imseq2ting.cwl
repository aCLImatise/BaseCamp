class: CommandLineTool
id: imseq2ting.cwl
inputs:
- id: in_im_seq_folder
  doc: "Path to directory containing imseq repertoires as act-\nfile"
  type: Directory?
  inputBinding:
    prefix: --imseq_folder
- id: in_output
  doc: "Path to output directory\n"
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Path to output directory\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- imseq2ting
