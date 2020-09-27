class: CommandLineTool
id: find_indels.cwl
inputs:
- id: in_min_in_del_length
  doc: "Filter out indels shorter than this length. (default:\n0)"
  type: long
  inputBinding:
    prefix: --min_indel_length
- id: in_all_alignments
  doc: "Include secondary and supplementary alignments.\n(default: False)"
  type: boolean
  inputBinding:
    prefix: --all_alignments
- id: in_output
  doc: "Output indels to file instead of stdout. (default:\n<_io.TextIOWrapper name='<stdout>'\
    \ mode='w'\nencoding='ANSI_X3.4-1968'>)"
  type: File
  inputBinding:
    prefix: --output
- id: in_bed
  doc: 'Additionaly output a .bed file. (default: None)'
  type: File
  inputBinding:
    prefix: --bed
- id: in_threads
  doc: "Number of threads for parallel processing. (default:\n1)\n"
  type: long
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output indels to file instead of stdout. (default:\n<_io.TextIOWrapper name='<stdout>'\
    \ mode='w'\nencoding='ANSI_X3.4-1968'>)"
  type: File
  outputBinding:
    glob: $(inputs.in_output)
- id: out_bed
  doc: 'Additionaly output a .bed file. (default: None)'
  type: File
  outputBinding:
    glob: $(inputs.in_bed)
cwlVersion: v1.1
baseCommand:
- find_indels
