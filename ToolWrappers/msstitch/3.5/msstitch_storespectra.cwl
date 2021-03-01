class: CommandLineTool
id: msstitch_storespectra.cwl
inputs:
- id: in_dbfile
  doc: Database lookup file
  type: File?
  inputBinding:
    prefix: --dbfile
- id: in_output_file
  doc: Output file
  type: File?
  inputBinding:
    prefix: -o
- id: in_spectra
  doc: "Spectra files in mzML format. Multiple files can be\nspecified, if order is\
    \ important, e.g. when matching\nthem with quant data, the order will be their\
    \ input\norder at the command line."
  type: string[]
  inputBinding:
    prefix: --spectra
- id: in_set_names
  doc: "Names of biological sets. Can be specified with\nquotation marks if spaces\
    \ are used\n"
  type: string[]
  inputBinding:
    prefix: --setnames
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: Output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/msstitch:3.5--py_0
cwlVersion: v1.1
baseCommand:
- msstitch
- storespectra
