class: CommandLineTool
id: swiftlink.cwl
inputs:
- id: in_output
  doc: (default = 'swiftlink.out')
  type: string?
  inputBinding:
    prefix: --output
- id: in_trace_prefix
  doc: (default = 'trace')
  type: string?
  inputBinding:
    prefix: --traceprefix
- id: in_floatfloat__penetrancefloatfloatfloatdefault
  doc: ',FLOAT,FLOAT --penetrance=FLOAT,FLOAT,FLOAT(default = 0.00,0.00,1.00)'
  type: double?
  inputBinding:
    prefix: -k
- id: in_gpu
  doc: '[UNAVAILABLE, COMPILED WITHOUT CUDA]'
  type: boolean?
  inputBinding:
    prefix: --gpu
- id: in_d
  doc: ''
  type: File?
  inputBinding:
    prefix: -d
- id: in_m
  doc: ''
  type: File?
  inputBinding:
    prefix: -m
- id: in_p
  doc: ''
  type: File?
  inputBinding:
    prefix: -p
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- swiftlink
