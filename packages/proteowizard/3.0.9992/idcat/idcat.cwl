class: CommandLineTool
id: idcat.cwl
inputs:
- id: in_fields
  doc: ': comma separated list of fields to display'
  type: string?
  inputBinding:
    prefix: --fields
- id: in_overwrite_file_it
  doc: '[ --force ]        : overwrite file if it exists.'
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_arg_sort_single
  doc: '[ --sort ] arg     : sort by (single) column'
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_arg_output_filename
  doc: '[ --output ] arg   : output filename or directory (for multiple files).'
  type: File?
  inputBinding:
    prefix: -o
- id: in_prints_extra_information
  doc: '[ --verbose ]      : prints extra information.'
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_scan
  doc: rt
  type: string
  inputBinding:
    position: 0
- id: in_mz
  doc: charge
  type: string
  inputBinding:
    position: 1
- id: in_score
  doc: scoretype
  type: string
  inputBinding:
    position: 2
- id: in_peptide
  doc: protein
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_arg_output_filename
  doc: '[ --output ] arg   : output filename or directory (for multiple files).'
  type: File?
  outputBinding:
    glob: $(inputs.in_arg_output_filename)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/proteowizard:3.0.9992
cwlVersion: v1.1
baseCommand:
- idcat
