class: CommandLineTool
id: bl_pair_reads.cwl
inputs:
- id: in_specify_input_files
  doc: specify multiple input FASTQ files
  type: boolean
  inputBinding:
    prefix: -i
- id: in_specify_basename_output
  doc: specify the BASENAME for the output files
  type: boolean
  inputBinding:
    prefix: -o
- id: in_use_sep_separator
  doc: "use SEP as the separator in the ID line that precedes the pair number\n[default\
    \ ' ', for Casava 1.8 headers]"
  type: boolean
  inputBinding:
    prefix: -s
- id: in_pair_reads
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bl-pair-reads
