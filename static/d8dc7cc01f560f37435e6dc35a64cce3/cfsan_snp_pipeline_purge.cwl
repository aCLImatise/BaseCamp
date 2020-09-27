class: CommandLineTool
id: cfsan_snp_pipeline_purge.cwl
inputs:
- id: in_verbose
  doc: 'Verbose message level (0=no info, 5=lots) (default: 1)'
  type: long
  inputBinding:
    prefix: --verbose
- id: in_work_dir
  doc: "Path to the working directory containing the \"samples\"\ndirectory to be\
    \ recursively deleted"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cfsan_snp_pipeline
- purge
