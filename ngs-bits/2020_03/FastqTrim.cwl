class: CommandLineTool
id: FastqTrim.cwl
inputs:
- id: in
  doc: Input gzipped FASTQ file.
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: Output gzipped FASTQ file.
  type: File
  inputBinding:
    prefix: -out
- id: start
  doc: "Trim this number of bases from the start of the read. Default value: '0'"
  type: long
  inputBinding:
    prefix: -start
- id: end
  doc: "Trim this number of bases from the end of the read. Default value: '0'"
  type: long
  inputBinding:
    prefix: -end
- id: len
  doc: "Restrict read length to this value (after trimming from start/end). Default\
    \ value: '0'"
  type: long
  inputBinding:
    prefix: -len
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
- FastqTrim
