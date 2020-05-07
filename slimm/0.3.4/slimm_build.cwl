class: CommandLineTool
id: slimm_build.cwl
inputs:
- id: version_check
  doc: 'Turn this option off to disable version update notifications of the application.
    One of 1, ON, TRUE, T, YES, 0, OFF, FALSE, F, and NO. Default: 1.'
  type: boolean
  inputBinding:
    prefix: --version-check
- id: output_file
  doc: 'The path to the output file (default slimm_db.sldb) Valid filetype is: .sldb.
    Default: slimm_db.sldb.'
  type: string
  inputBinding:
    prefix: --output-file
- id: names
  doc: NCBI's names.dmp file which contains the mapping of taxaid to name
  type: string
  inputBinding:
    prefix: --names
- id: nodes
  doc: NCBI's nodes.dmp file which contains the taxonomic tree.
  type: string
  inputBinding:
    prefix: --nodes
- id: batch
  doc: 'maximum number of mapping to load to memory. (default=1000000) Default: 1000000.'
  type: long
  inputBinding:
    prefix: --batch
- id: verbose
  doc: Enable verbose output.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- slimm_build
