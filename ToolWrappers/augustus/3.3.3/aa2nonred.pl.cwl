class: CommandLineTool
id: aa2nonred.pl.cwl
inputs:
- id: in_max_id
  doc: "maximum percent identity between to sequences\n(#identical aa) / (length of\
    \ shorter sequence) default: 0.8"
  type: long?
  inputBinding:
    prefix: --maxid
- id: in_blast_path
  doc: path to blast (only implemented for NCBI BLAST)
  type: File?
  inputBinding:
    prefix: --BLAST_PATH
- id: in_diamond_path
  doc: path to diamond
  type: File?
  inputBinding:
    prefix: --DIAMOND_PATH
- id: in_cores
  doc: number of cores to be used by NCBI BLAST or DIAMOND
  type: long?
  inputBinding:
    prefix: --cores
- id: in_diamond
  doc: use DIAMOND istead of NCBI BLAST
  type: boolean?
  inputBinding:
    prefix: --diamond
- id: in_verbosity
  doc: verbosity level for information printed to stdout
  type: string?
  inputBinding:
    prefix: --verbosity
- id: in_input_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_output_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- aa2nonred.pl
