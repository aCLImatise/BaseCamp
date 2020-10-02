class: CommandLineTool
id: cfsan_snp_pipeline_call_sites.cwl
inputs:
- id: in_force
  doc: "Force processing even when result files already exist\nand are newer than\
    \ inputs (default: False)"
  type: boolean
  inputBinding:
    prefix: --force
- id: in_verbose
  doc: 'Verbose message level (0=no info, 5=lots) (default: 1)'
  type: long
  inputBinding:
    prefix: --verbose
- id: in_reference_file
  doc: Relative or absolute path to the reference fasta file
  type: string
  inputBinding:
    position: 0
- id: in_sample_dir
  doc: Relative or absolute directory of the sample
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- cfsan_snp_pipeline
- call_sites
