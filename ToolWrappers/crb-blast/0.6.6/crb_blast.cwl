class: CommandLineTool
id: crb_blast.cwl
inputs:
- id: in_query
  doc: query fasta file
  type: File?
  inputBinding:
    prefix: --query
- id: in_target
  doc: target fasta file
  type: File?
  inputBinding:
    prefix: --target
- id: in_evalue
  doc: "e-value cut off for BLAST. Format 1e-5 (default:\n1.0e-05)"
  type: double?
  inputBinding:
    prefix: --evalue
- id: in_threads
  doc: 'number of threads to run BLAST with (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_output
  doc: output file as tsv
  type: File?
  inputBinding:
    prefix: --output
- id: in_split
  doc: "split the fasta files into chunks and run multiple blast\njobs and then combine\
    \ them."
  type: boolean?
  inputBinding:
    prefix: --split
- id: in_options
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: output file as tsv
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- crb-blast
