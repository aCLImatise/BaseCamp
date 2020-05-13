class: CommandLineTool
id: FastqExtractBarcode.cwl
inputs:
- id: in
  doc: input fastq file1.
  type: File
  inputBinding:
    prefix: -in
- id: out_main
  doc: output filename for main fastq.
  type: string
  inputBinding:
    prefix: -out_main
- id: cut
  doc: "number of bases from the beginning of reads to use as barcodes. Default value:\
    \ '0'"
  type: long
  inputBinding:
    prefix: -cut
- id: out_index
  doc: "output filename for index fastq. Default value: 'index.fastq.gz'"
  type: string
  inputBinding:
    prefix: -out_index
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
- FastqExtractBarcode
