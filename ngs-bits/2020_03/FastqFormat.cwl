class: CommandLineTool
id: FastqFormat.cwl
inputs:
- id: in
  doc: Input FASTQ file (gzipped or plain).
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output text file. If unset, writes to STDOUT. Default value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: reads
  doc: "The number of reads to parse. Default value: '10000'"
  type: long
  inputBinding:
    prefix: -reads
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
- FastqFormat
