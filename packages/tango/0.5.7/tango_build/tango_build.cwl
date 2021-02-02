class: CommandLineTool
id: ../../../tango_build.cwl
inputs:
- id: in_dbfile
  doc: "Name of diamond database file. Defaults to\ndiamond.dmnd in same directory\
    \ as the protein fasta\nfile"
  type: File
  inputBinding:
    prefix: --dbfile
- id: in_cpus
  doc: Number of cpus to use when building (defaults to 1)
  type: long
  inputBinding:
    prefix: --cpus
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- tango
- build
