class: CommandLineTool
id: ReadQC.cwl
inputs:
- id: in1
  doc: Forward input gzipped FASTQ file(s).
  type: File
  inputBinding:
    prefix: -in1
- id: in2
  doc: "Reverse input gzipped FASTQ file(s) for paired-end mode (same number of cycles/reads\
    \ as 'in1'). Default value: ''"
  type: File
  inputBinding:
    prefix: -in2
- id: out
  doc: "Output qcML file. If unset, writes to STDOUT. Default value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: txt
  doc: "Writes TXT format instead of qcML. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -txt
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
- ReadQC
