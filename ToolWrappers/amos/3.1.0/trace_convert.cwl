class: CommandLineTool
id: trace_convert.cwl
inputs:
- id: in_format_input_defaults
  doc: Format for input (defaults to any
  type: string?
  inputBinding:
    prefix: -in_format
- id: in_format_output_default
  doc: Format for output (default ztr)
  type: string?
  inputBinding:
    prefix: -out_format
- id: in_fof_n
  doc: Get "Input Output" names from a fofn
  type: File?
  inputBinding:
    prefix: -fofn
- id: in_passed
  doc: Output fofn of passed names
  type: string?
  inputBinding:
    prefix: -passed
- id: in_error
  doc: Redirect stderr to file stderrfn (default is stderr)
  type: File?
  inputBinding:
    prefix: -error
- id: in_failed
  doc: Output fofn of failed names
  type: string?
  inputBinding:
    prefix: -failed
- id: in_name
  doc: ID line for experiment file output
  type: File?
  inputBinding:
    prefix: -name
- id: in_subtract_background
  doc: Subtracts the trace background
  type: boolean?
  inputBinding:
    prefix: -subtract_background
- id: in_normalise
  doc: Normalises peak heights
  type: boolean?
  inputBinding:
    prefix: -normalise
- id: in_scale
  doc: Downscales peaks to 0-range
  type: long?
  inputBinding:
    prefix: -scale
- id: in_compress
  doc: Compress file output (not if stdout)
  type: File?
  inputBinding:
    prefix: -compress
- id: in_abi_data
  doc: 'ABI DATA lanes to copy: eg 9,10,11,12'
  type: long?
  inputBinding:
    prefix: -abi_data
- id: in_convert_trace
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_13
  doc: ''
  type: string?
  inputBinding:
    position: 1
- id: in_var_14
  doc: ''
  type: string?
  inputBinding:
    position: 2
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_out
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name
  doc: ID line for experiment file output
  type: File?
  outputBinding:
    glob: $(inputs.in_name)
- id: out_compress
  doc: Compress file output (not if stdout)
  type: File?
  outputBinding:
    glob: $(inputs.in_compress)
hints: []
cwlVersion: v1.1
baseCommand:
- trace_convert
