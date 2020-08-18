class: CommandLineTool
id: ../../../tango_build.cwl
inputs:
- id: dbfile
  doc: Name of diamond database file. Defaults to diamond.dmnd in same directory as
    the protein fasta file
  type: string
  inputBinding:
    prefix: --dbfile
- id: cpus
  doc: Number of cpus to use when building (defaults to 1)
  type: string
  inputBinding:
    prefix: --cpus
outputs: []
cwlVersion: v1.1
baseCommand:
- tango
- build
