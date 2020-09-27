class: CommandLineTool
id: convert_trace.cwl
inputs:
- id: in_format_input_defaults
  doc: Format for input (defaults to any
  type: string
  inputBinding:
    prefix: -in_format
- id: in_format_output_default
  doc: Format for output (default ztr)
  type: string
  inputBinding:
    prefix: -out_format
- id: in_fof_n
  doc: Get "Input Output" names from a fofn
  type: File
  inputBinding:
    prefix: -fofn
- id: in_passed
  doc: Output fofn of passed names
  type: string
  inputBinding:
    prefix: -passed
- id: in_error
  doc: Redirect stderr to file "errs"
  type: File
  inputBinding:
    prefix: -error
- id: in_failed
  doc: Output fofn of failed names
  type: string
  inputBinding:
    prefix: -failed
- id: in_name
  doc: ID line for experiment file output
  type: File
  inputBinding:
    prefix: -name
- id: in_subtract_background
  doc: Auto-subtracts the trace background
  type: boolean
  inputBinding:
    prefix: -subtract_background
- id: in_subtract
  doc: Subtracts a specified background amount
  type: string
  inputBinding:
    prefix: -subtract
- id: in_normalise
  doc: Normalises peak heights
  type: boolean
  inputBinding:
    prefix: -normalise
- id: in_min_normalise
  doc: Minimum trace amp for normalising
  type: boolean
  inputBinding:
    prefix: -min_normalise
- id: in_scale
  doc: Downscales peaks to 0-range
  type: long
  inputBinding:
    prefix: -scale
- id: in_compress
  doc: Compress file output (not if stdout)
  type: File
  inputBinding:
    prefix: -compress
- id: in_abi_data
  doc: 'ABI DATA lanes to copy: eg 9,10,11,12'
  type: long
  inputBinding:
    prefix: -abi_data
- id: in_signed
  doc: Apply global shift to avoid negative values
  type: boolean
  inputBinding:
    prefix: -signed
- id: in_none_g
  doc: Shift each channel independently to avoid -ve
  type: boolean
  inputBinding:
    prefix: -noneg
- id: in_var_16
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_17
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_out
  doc: ''
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_name
  doc: ID line for experiment file output
  type: File
  outputBinding:
    glob: $(inputs.in_name)
- id: out_compress
  doc: Compress file output (not if stdout)
  type: File
  outputBinding:
    glob: $(inputs.in_compress)
cwlVersion: v1.1
baseCommand:
- convert_trace
