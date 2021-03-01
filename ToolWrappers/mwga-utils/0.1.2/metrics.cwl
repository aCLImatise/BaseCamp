class: CommandLineTool
id: metrics.cwl
inputs:
- id: in_prefix_output_wig
  doc: 'Prefix for output wig files [default: metrics]'
  type: string?
  inputBinding:
    prefix: -p
- id: in_manually_specify_number
  doc: 'Manually specify the number of assemblies in the alignment; if not, it is
    computed from the MAF [default: 0]'
  type: long?
  inputBinding:
    prefix: -n
- id: in_number_threads_use
  doc: 'Number of threads to use [default: 1].'
  type: long?
  inputBinding:
    prefix: -t
- id: in_h
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -h
- id: in_manually
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_var_5
  doc: ''
  type: long
  inputBinding:
    position: 0
- id: in_prefix
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_show
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_maf_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_path
  doc: ''
  type: File
  inputBinding:
    position: 1
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_specify
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_this
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_threads
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_var_18
  doc: ''
  type: long
  inputBinding:
    position: 3
- id: in_wig
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_maf
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_use
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_assemblies
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_in
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_alignment
  doc: ''
  type: string
  inputBinding:
    position: 8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- metrics
