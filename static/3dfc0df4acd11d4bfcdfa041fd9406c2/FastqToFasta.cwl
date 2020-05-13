class: CommandLineTool
id: FastqToFasta.cwl
inputs:
- id: in
  doc: Input gzipped FASTQ file.
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output FASTA file. If unset, writes to STDOUT. Default value: ''"
  type: File
  inputBinding:
    prefix: -out
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
- FastqToFasta
