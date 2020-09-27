class: CommandLineTool
id: guppy_filter.cwl
inputs:
- id: in_specify_filename_write
  doc: Specify the filename to write to.
  type: boolean
  inputBinding:
    prefix: -o
- id: in_out_dir
  doc: Specify the directory to write files to.
  type: boolean
  inputBinding:
    prefix: --out-dir
- id: in_prefix
  doc: Specify a string to be prepended to filenames.
  type: boolean
  inputBinding:
    prefix: --prefix
- id: in_vr
  doc: Exclude every placement name by default (by default everything included).
  type: boolean
  inputBinding:
    prefix: -Vr
- id: in_ir
  doc: Include placements whose name matches the given regexp. May be passed multiple
    times.
  type: boolean
  inputBinding:
    prefix: -Ir
- id: in_er
  doc: Exclude placements whose name matches the given regexp. May be passed multiple
    times.
  type: boolean
  inputBinding:
    prefix: -Er
- id: in_reference_package_path
  doc: Reference package path.
  type: boolean
  inputBinding:
    prefix: -c
- id: in_cut_off
  doc: 'Use this cutoff for determining how likely a match is for a tax_id. Default:
    0.9'
  type: boolean
  inputBinding:
    prefix: --cutoff
- id: in_pp
  doc: Use posterior probability for our criteria.
  type: boolean
  inputBinding:
    prefix: --pp
- id: in_vx
  doc: Exclude every tax_id by default (by default everything included).
  type: boolean
  inputBinding:
    prefix: -Vx
- id: in_ix
  doc: Include placements which are likely matches for the given tax_id. May be passed
    multiple times.
  type: boolean
  inputBinding:
    prefix: -Ix
- id: in_ex
  doc: Exclude placements which are likely matches for the given tax_id. May be passed
    multiple times.
  type: boolean
  inputBinding:
    prefix: -Ex
- id: in_mass_gt
  doc: Include pqueries with a mass greater than the specified value.
  type: boolean
  inputBinding:
    prefix: --mass-gt
- id: in_mass_le
  doc: Include pqueries with a mass less than or equal to the specified value.
  type: boolean
  inputBinding:
    prefix: --mass-le
- id: in_help
  doc: Display this list of options
  type: boolean
  inputBinding:
    prefix: --help
- id: in_filter
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_place_file
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_s
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- guppy
- filter
