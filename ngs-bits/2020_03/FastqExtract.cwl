class: CommandLineTool
id: FastqExtract.cwl
inputs:
- id: in
  doc: Input FASTQ file (gzipped or plain).
  type: File
  inputBinding:
    prefix: -in
- id: ids
  doc: Input TSV file containing IDs (without the '@') in the first column and optional
    length in the second column.
  type: File
  inputBinding:
    prefix: -ids
- id: out
  doc: Output FASTQ file.
  type: File
  inputBinding:
    prefix: -out
- id: v
  doc: "Invert match: keep non-matching reads. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -v
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
- FastqExtract
