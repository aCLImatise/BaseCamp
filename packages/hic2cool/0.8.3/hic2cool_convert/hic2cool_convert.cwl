class: CommandLineTool
id: hic2cool_convert.cwl
inputs:
- id: in_resolution
  doc: "integer bp resolution desired in cooler file. Setting\nto 0 (default) will\
    \ use all resolutions. If all\nresolutions are used, a multi-res .cool file will\
    \ be\ncreated, which has a different hdf5 structure. See the\nREADME for more\
    \ info"
  type: long
  inputBinding:
    prefix: --resolution
- id: in_nproc
  doc: "number of processes to use to parse hic file. default\nset to 1"
  type: long
  inputBinding:
    prefix: --nproc
- id: in_silent
  doc: if used, silence standard program output
  type: boolean
  inputBinding:
    prefix: --silent
- id: in_warnings
  doc: "if used, print out non-critical WARNING messages,\nwhich are hidden by default.\
    \ Silent mode takes\nprecedence over this\n"
  type: boolean
  inputBinding:
    prefix: --warnings
- id: in_in_file
  doc: hic input file path
  type: string
  inputBinding:
    position: 0
- id: in_outfile
  doc: cooler output file path
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hic2cool
- convert
