class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/fermi_build.cwl
inputs:
- id: use_small_marker
  doc: use a small marker per 2^(INT+3) bytes [3]
  type: long
  inputBinding:
    prefix: -b
- id: force_overwrite_file
  doc: force to overwrite the output file (effective with -o)
  type: boolean
  inputBinding:
    prefix: -f
- id: append_fmindex_existing
  doc: append the FM-index to the existing FILE [null]
  type: File
  inputBinding:
    prefix: -i
- id: trim_read_down
  doc: trim read down to INT bp [inf]
  type: long
  inputBinding:
    prefix: -l
- id: output_file_name
  doc: output file name [null]
  type: File
  inputBinding:
    prefix: -o
- id: trim_bp_reads
  doc: do not trim 1bp for reads whose forward and reverse are identical
  type: boolean
  inputBinding:
    prefix: -O
- id: number_symbols_process
  doc: number of symbols to process at a time [250000000]
  type: long
  inputBinding:
    prefix: -s
- id: in_dot_fa
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- fermi
- build
