class: CommandLineTool
id: transIndel_call.py.cwl
inputs:
- id: python
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: trans_in_del_call_py
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: opts
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: r
  doc: :reference genome used for VCF REF column (required for valid VCF)
  type: boolean
  inputBinding:
    prefix: -r
- id: c
  doc: :minimal observation count for Indel (default 4)
  type: boolean
  inputBinding:
    prefix: -c
- id: d
  doc: :minimal depth to call Indel (default 10)
  type: boolean
  inputBinding:
    prefix: -d
- id: f
  doc: :minimal variant allele frequency (default 0.1)
  type: boolean
  inputBinding:
    prefix: -f
- id: l
  doc: :minimal indel length to report (default 10)
  type: boolean
  inputBinding:
    prefix: -l
- id: m
  doc: :minimal mapq of read from BAM file to call indel (default 15)
  type: boolean
  inputBinding:
    prefix: -m
- id: t
  doc: :Limit analysis to targets listed in the BED-format FILE or a samtools region
    string
  type: boolean
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- transIndel_call.py
