class: CommandLineTool
id: ../../../tracy_basecall.cwl
inputs:
- id: arg_peak_ratio
  doc: '[ --pratio ] arg (=0.330000013)  peak ratio to call a base'
  type: boolean
  inputBinding:
    prefix: -p
- id: f
  doc: '[ --format ] arg (=json)         output format [json|tsv|fasta|fastq]'
  type: boolean
  inputBinding:
    prefix: -f
- id: arg_basecalling_output
  doc: '[ --output ] arg (="out.json")   basecalling output'
  type: boolean
  inputBinding:
    prefix: -o
- id: trace_do_tab_one
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- tracy
- basecall
