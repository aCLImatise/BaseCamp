class: CommandLineTool
id: fermi_build.cwl
inputs:
- id: in_use_small_marker
  doc: use a small marker per 2^(INT+3) bytes [3]
  type: long
  inputBinding:
    prefix: -b
- id: in_force_overwrite_file
  doc: force to overwrite the output file (effective with -o)
  type: File
  inputBinding:
    prefix: -f
- id: in_append_fmindex_existing
  doc: append the FM-index to the existing FILE [null]
  type: File
  inputBinding:
    prefix: -i
- id: in_trim_read_bp
  doc: trim read down to INT bp [inf]
  type: long
  inputBinding:
    prefix: -l
- id: in_output_file_name
  doc: output file name [null]
  type: File
  inputBinding:
    prefix: -o
- id: in_trim_bp_reads
  doc: do not trim 1bp for reads whose forward and reverse are identical
  type: boolean
  inputBinding:
    prefix: -O
- id: in_number_symbols_process
  doc: number of symbols to process at a time [250000000]
  type: long
  inputBinding:
    prefix: -s
- id: in_in_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force_overwrite_file
  doc: force to overwrite the output file (effective with -o)
  type: File
  outputBinding:
    glob: $(inputs.in_force_overwrite_file)
- id: out_output_file_name
  doc: output file name [null]
  type: File
  outputBinding:
    glob: $(inputs.in_output_file_name)
cwlVersion: v1.1
baseCommand:
- fermi
- build
