class: CommandLineTool
id: filter_overlap_file.cwl
inputs:
- id: in_threads
  doc: Number of threads (1)
  type: long
  inputBinding:
    prefix: --threads
- id: in_output
  doc: Output file (/dev/fd/1)
  type: File
  inputBinding:
    prefix: --output
- id: in_dump
  doc: Fragment in raw -dumpfragment format (false)
  type: boolean
  inputBinding:
    prefix: --dump
- id: in_filter_overlap_file_cmdline
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_fragments
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file (/dev/fd/1)
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- filter_overlap_file
