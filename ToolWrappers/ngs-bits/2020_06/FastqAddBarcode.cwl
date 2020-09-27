class: CommandLineTool
id: FastqAddBarcode.cwl
inputs:
- id: in_in_one
  doc: Input FASTQ file 1.
  type: File
  inputBinding:
    prefix: -in1
- id: in_in_two
  doc: Input FASTQ file 2.
  type: File
  inputBinding:
    prefix: -in2
- id: in_in_barcode
  doc: Input barcode file.
  type: File
  inputBinding:
    prefix: -in_barcode
- id: in_out_one
  doc: Output filename for read 1 FASTQ.
  type: File
  inputBinding:
    prefix: -out1
- id: in_out_two
  doc: Output filename for read 2 FASTQ.
  type: File
  inputBinding:
    prefix: -out2
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_one
  doc: Output filename for read 1 FASTQ.
  type: File
  outputBinding:
    glob: $(inputs.in_out_one)
- id: out_out_two
  doc: Output filename for read 2 FASTQ.
  type: File
  outputBinding:
    glob: $(inputs.in_out_two)
cwlVersion: v1.1
baseCommand:
- FastqAddBarcode
