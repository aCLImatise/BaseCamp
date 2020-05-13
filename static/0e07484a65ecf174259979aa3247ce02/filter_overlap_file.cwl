class: CommandLineTool
id: filter_overlap_file.cwl
inputs:
- id: threads
  doc: Number of threads (1)
  type: long
  inputBinding:
    prefix: --threads
- id: output
  doc: Output file (/dev/fd/1)
  type: File
  inputBinding:
    prefix: --output
- id: dump
  doc: Fragment in raw -dumpfragment format (false)
  type: boolean
  inputBinding:
    prefix: --dump
outputs: []
cwlVersion: v1.1
baseCommand:
- filter_overlap_file
