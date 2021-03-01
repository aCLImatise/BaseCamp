class: CommandLineTool
id: ppanini_press.cwl
inputs:
- id: in_gene_path
  doc: a directory path to ppanini_gene_caller outputs which includes txt, gff, and
    faa files for each sample.
  type: File?
  inputBinding:
    prefix: --gene-path
- id: in_output
  doc: Path for outputs
  type: File?
  inputBinding:
    prefix: --output
- id: in_resume
  doc: bypass commands if the output files exist
  type: boolean?
  inputBinding:
    prefix: --resume
- id: in_threads
  doc: "number of threads/processes\n[DEFAULT: 1]"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_scale
  doc: scale the abundance table
  type: string?
  inputBinding:
    prefix: --scale
- id: in_memory
  doc: "memory for -M option in CD-Hit\n"
  type: string?
  inputBinding:
    prefix: --memory
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ppanini_press
