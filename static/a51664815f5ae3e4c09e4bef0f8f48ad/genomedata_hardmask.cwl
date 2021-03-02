class: CommandLineTool
id: genomedata_hardmask.cwl
inputs:
- id: in_track_name
  doc: 'Track(s) to be filtered (default: all)'
  type: string[]
  inputBinding:
    prefix: --trackname
- id: in_hard_mask
  doc: "Specify a comparison operation on a value to mask out\n(e.g. \"lt0.5\" will\
    \ mask all values less than 0.5). See\nthe bash comparison operators for the two\
    \ letter\noperations (default: all values masked)"
  type: double?
  inputBinding:
    prefix: --hardmask
- id: in_no_close
  doc: Do not close the genomedata archive after masking
  type: boolean?
  inputBinding:
    prefix: --no-close
- id: in_dry_run
  doc: "Do not perform any masking. Useful with verbosity set\nto see what regions\
    \ would be filtered"
  type: boolean?
  inputBinding:
    prefix: --dry-run
- id: in_verbose
  doc: Print status and diagnostic messages
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_mask_file
  doc: input mask file
  type: string
  inputBinding:
    position: 0
- id: in_gd_archive
  doc: genomedata archive
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/genomedata:1.5.0--py36h485661d_0
cwlVersion: v1.1
baseCommand:
- genomedata-hardmask
