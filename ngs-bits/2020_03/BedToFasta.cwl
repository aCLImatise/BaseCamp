class: CommandLineTool
id: BedToFasta.cwl
inputs:
- id: in
  doc: Input BED file.
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output FASTA file. If unset, writes to STDOUT. Default value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: ref
  doc: "Reference genome FASTA file. If unset 'reference_genome' from the 'settings.ini'\
    \ file is used. Default value: ''"
  type: File
  inputBinding:
    prefix: -ref
- id: changelog
  doc: Prints changeloge and exits.
  type: boolean
  inputBinding:
    prefix: --changelog
- id: tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean
  inputBinding:
    prefix: --tdx
outputs: []
cwlVersion: v1.1
baseCommand:
- BedToFasta
