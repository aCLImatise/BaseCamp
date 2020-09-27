class: CommandLineTool
id: genFm9.cwl
inputs:
- id: in_fast_q
  doc: file is in a fastq format
  type: File
  inputBinding:
    prefix: -fastq
- id: in_multi_fast_a
  doc: FILE  with all the reads
  type: boolean
  inputBinding:
    prefix: -multiFasta
- id: in_output
  doc: for the output-file  if print option was selected (default output)
  type: File
  inputBinding:
    prefix: -output
- id: in_size
  doc: of reads to generate the FM9 (default all dataset)
  type: long
  inputBinding:
    prefix: -size
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: for the output-file  if print option was selected (default output)
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- genFm9
