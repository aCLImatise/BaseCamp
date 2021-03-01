class: CommandLineTool
id: phyluce_align_parallel_sate.cwl
inputs:
- id: in_sate_conf
  doc: '[--cores CORES]'
  type: string?
  inputBinding:
    prefix: --sate-conf
- id: in_input
  doc: The input directory containing fasta files
  type: Directory?
  inputBinding:
    prefix: --input
- id: in_output
  doc: The output directory to hold alignments
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_cores
  doc: The number of compute cores to use
  type: long?
  inputBinding:
    prefix: --cores
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: The output directory to hold alignments
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- phyluce_align_parallel_sate
