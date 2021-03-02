class: CommandLineTool
id: bl_fastq2fasta.cwl
inputs:
- id: in_specify_multiple_input_files
  doc: specify multiple FASTQ input files
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_specify_multiple_corresponding_output_files
  doc: specify multiple (corresponding) FASTA output files
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_specify_multiple_corresponding_qual_files
  doc: specify multiple (corresponding) QUAL output files
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_print_ascii_quality
  doc: 'print ASCII quality scores (default: numerical scores)'
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_use_offset_default
  doc: 'use OFFSET for converting ASCII quality scores (default: 33)'
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_reformat_id_line
  doc: "reformat the ID line by replacing everything after a space, tab or / with\n\
    with the specified SUFFIX\n"
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_fast_q_two_fast_a
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- bl-fastq2fasta
