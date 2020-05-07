class: CommandLineTool
id: VcfCheck.cwl
inputs:
- id: in
  doc: "Input VCF file. If unset, reads from STDIN. Default value: ''"
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output file. If unset, writes to STDOUT. Default value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: lines
  doc: "Number of lines to check in the VCF file (unlimited if 0) Default value: '1000'"
  type: long
  inputBinding:
    prefix: -lines
- id: ref
  doc: "Reference genome FASTA file. If unset 'reference_genome' from the 'settings.ini'\
    \ file is used. Default value: ''"
  type: File
  inputBinding:
    prefix: -ref
- id: info
  doc: "Add general information about the input file to the output. Default value:\
    \ 'false'"
  type: boolean
  inputBinding:
    prefix: -info
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
- VcfCheck
