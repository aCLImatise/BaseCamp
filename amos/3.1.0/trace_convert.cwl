class: CommandLineTool
id: trace_convert.cwl
inputs:
- id: convert_trace
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_format
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: out_format
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: out
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_format
  doc: Format for input (defaults to any
  type: string
  inputBinding:
    prefix: -in_format
- id: out_format
  doc: Format for output (default ztr)
  type: string
  inputBinding:
    prefix: -out_format
- id: fof_n
  doc: Get "Input Output" names from a fofn
  type: File
  inputBinding:
    prefix: -fofn
- id: passed
  doc: Output fofn of passed names
  type: string
  inputBinding:
    prefix: -passed
- id: error
  doc: Redirect stderr to file stderrfn (default is stderr)
  type: string
  inputBinding:
    prefix: -error
- id: failed
  doc: Output fofn of failed names
  type: string
  inputBinding:
    prefix: -failed
- id: name
  doc: ID line for experiment file output
  type: string
  inputBinding:
    prefix: -name
- id: subtract_background
  doc: Subtracts the trace background
  type: boolean
  inputBinding:
    prefix: -subtract_background
- id: normalise
  doc: Normalises peak heights
  type: boolean
  inputBinding:
    prefix: -normalise
- id: scale
  doc: Downscales peaks to 0-range
  type: string
  inputBinding:
    prefix: -scale
- id: compress
  doc: Compress file output (not if stdout)
  type: string
  inputBinding:
    prefix: -compress
- id: abi_data
  doc: 'ABI DATA lanes to copy: eg 9,10,11,12'
  type: string
  inputBinding:
    prefix: -abi_data
- id: explicitly
  doc: end of options
  type: string
  inputBinding:
    prefix: --                        Explicitly
outputs: []
cwlVersion: v1.1
baseCommand:
- trace_convert
