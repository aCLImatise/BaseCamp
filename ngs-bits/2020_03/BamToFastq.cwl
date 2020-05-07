class: CommandLineTool
id: BamToFastq.cwl
inputs:
- id: in
  doc: Input BAM file.
  type: File
  inputBinding:
    prefix: -in
- id: out1
  doc: Read 1 output FASTQ.GZ file.
  type: File
  inputBinding:
    prefix: -out1
- id: out2
  doc: Read 2 output FASTQ.GZ file.
  type: File
  inputBinding:
    prefix: -out2
- id: remove_duplicates
  doc: "Does not export duplicate reads into the FASTQ file. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -remove_duplicates
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
- BamToFastq
