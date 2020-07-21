class: CommandLineTool
id: ../../../FastqExtractUMI.cwl
inputs:
- id: in_one
  doc: Input FASTQ file 1.
  type: File
  inputBinding:
    prefix: -in1
- id: in_two
  doc: Input FASTQ file 2.
  type: File
  inputBinding:
    prefix: -in2
- id: out_one
  doc: Output filename for read 1 FASTQ.
  type: File
  inputBinding:
    prefix: -out1
- id: out_two
  doc: Output filename for read 2 FASTQ.
  type: File
  inputBinding:
    prefix: -out2
- id: cut_one
  doc: "Number of bases from the head of read 1 to use as UMI. Default value: '0'"
  type: long
  inputBinding:
    prefix: -cut1
- id: cut_two
  doc: "Number of bases from the head of read 2 to use as UMI. Default value: '0'"
  type: long
  inputBinding:
    prefix: -cut2
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
- FastqExtractUMI
