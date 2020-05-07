class: CommandLineTool
id: FastqAddBarcode.cwl
inputs:
- id: in1
  doc: Input FASTQ file 1.
  type: File
  inputBinding:
    prefix: -in1
- id: in2
  doc: Input FASTQ file 2.
  type: File
  inputBinding:
    prefix: -in2
- id: in_barcode
  doc: Input barcode file.
  type: File
  inputBinding:
    prefix: -in_barcode
- id: out1
  doc: Output filename for read 1 FASTQ.
  type: File
  inputBinding:
    prefix: -out1
- id: out2
  doc: Output filename for read 2 FASTQ.
  type: File
  inputBinding:
    prefix: -out2
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
- FastqAddBarcode
