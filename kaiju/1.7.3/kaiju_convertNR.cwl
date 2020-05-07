class: CommandLineTool
id: kaiju_convertNR.cwl
inputs:
- id: t
  doc: Name of nodes.dmp file.
  type: File
  inputBinding:
    prefix: -t
- id: g
  doc: Name of prot.accession2taxid file.
  type: File
  inputBinding:
    prefix: -g
- id: o
  doc: Name of output file.
  type: File
  inputBinding:
    prefix: -o
- id: a
  doc: Prefix taxon ID in database names with the first accession number per record.
  type: boolean
  inputBinding:
    prefix: -a
- id: i
  doc: Name of NR file. If this option is not used, then the program will read from
    STDIN.
  type: File
  inputBinding:
    prefix: -i
- id: l
  doc: Name of file with taxon IDs. Only records having one of these IDs as ancestor
    in the taxonomy will be used.
  type: File
  inputBinding:
    prefix: -l
- id: e
  doc: Name of file with accession numbers that will be excluded.
  type: File
  inputBinding:
    prefix: -e
outputs: []
cwlVersion: v1.1
baseCommand:
- kaiju-convertNR
