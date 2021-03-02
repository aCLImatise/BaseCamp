class: CommandLineTool
id: slimm_build.cwl
inputs:
- id: in_version_check
  doc: "Turn this option off to disable version update notifications of the\napplication.\
    \ One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO.\nDefault: 1."
  type: boolean?
  inputBinding:
    prefix: --version-check
- id: in_output_file
  doc: "The path to the output file (default slimm_db.sldb) Valid filetype\nis: .sldb.\
    \ Default: slimm_db.sldb."
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_names
  doc: NCBI's names.dmp file which contains the mapping of taxaid to name
  type: File?
  inputBinding:
    prefix: --names
- id: in_nodes
  doc: NCBI's nodes.dmp file which contains the taxonomic tree.
  type: File?
  inputBinding:
    prefix: --nodes
- id: in_batch
  doc: "maximum number of mapping to load to memory. (default=1000000)\nDefault: 1000000."
  type: long?
  inputBinding:
    prefix: --batch
- id: in_verbose
  doc: Enable verbose output.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_see
  doc: http://www.seqan.de/projects/slimm  for more information.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_file
  doc: "The path to the output file (default slimm_db.sldb) Valid filetype\nis: .sldb.\
    \ Default: slimm_db.sldb."
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
hints: []
cwlVersion: v1.1
baseCommand:
- slimm_build
