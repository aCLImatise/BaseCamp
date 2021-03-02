class: CommandLineTool
id: make_fasta_from_fastg.py.cwl
inputs:
- id: in_graph
  doc: "(spades 3.50+) FASTG file to process [recommended:\nbefore_rr.fastg]"
  type: File?
  inputBinding:
    prefix: --graph
- id: in_output
  doc: "output file name for FASTA of cycles\n"
  type: File?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "output file name for FASTA of cycles\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- make_fasta_from_fastg.py
