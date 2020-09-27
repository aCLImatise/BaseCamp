class: CommandLineTool
id: tracy_basecall.cwl
inputs:
- id: in_arg_peak_ratio
  doc: '[ --pratio ] arg (=0.330000013)  peak ratio to call a base'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_f
  doc: '[ --format ] arg (=json)         output format [json|tsv|fasta|fastq]'
  type: boolean
  inputBinding:
    prefix: -f
- id: in_arg_basecalling_output
  doc: '[ --output ] arg (="out.json")   basecalling output'
  type: boolean
  inputBinding:
    prefix: -o
- id: in_trace_do_tab_one
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tracy
- basecall
