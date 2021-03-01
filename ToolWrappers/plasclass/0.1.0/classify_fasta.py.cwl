class: CommandLineTool
id: classify_fasta.py.cwl
inputs:
- id: in_fast_a
  doc: "fasta file of the sequences to be classified (default:\nNone)"
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_outfile
  doc: 'output file prefix (default: None)'
  type: File?
  inputBinding:
    prefix: --outfile
- id: in_num_processes
  doc: "Number of processes to use (default: 8)\n"
  type: long?
  inputBinding:
    prefix: --num_processes
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: 'output file prefix (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_outfile)
hints: []
cwlVersion: v1.1
baseCommand:
- classify_fasta.py
