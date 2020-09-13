class: CommandLineTool
id: ../../../ReadQC.cwl
inputs:
- id: in_in_one
  doc: Forward input gzipped FASTQ file(s).
  type: File
  inputBinding:
    prefix: -in1
- id: in_in_two
  doc: "Reverse input gzipped FASTQ file(s) for paired-end mode (same number of cycles/reads\
    \ as 'in1').\nDefault value: ''"
  type: File
  inputBinding:
    prefix: -in2
- id: in_out
  doc: "Output qcML file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: in_txt
  doc: "Writes TXT format instead of qcML.\nDefault value: 'false'"
  type: boolean
  inputBinding:
    prefix: -txt
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
- id: out_out
  doc: "Output qcML file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File
  outputBinding:
    glob: $(inputs.in_out)
cwlVersion: v1.1
baseCommand:
- ReadQC
