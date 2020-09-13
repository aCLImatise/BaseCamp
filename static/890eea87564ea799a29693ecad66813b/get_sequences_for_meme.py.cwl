class: CommandLineTool
id: ../../../get_sequences_for_meme.py.cwl
inputs:
- id: in_pad
  doc: "Pad the sequences from both sides with this length.\n(default: 20)\n"
  type: long
  inputBinding:
    prefix: --pad
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- get_sequences_for_meme.py
