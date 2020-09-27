class: CommandLineTool
id: mendelscan_rhro.cwl
inputs:
- id: in_ped_file
  doc: Pedigree file in 6-column tab-delimited format
  type: boolean
  inputBinding:
    prefix: --ped-file
- id: in_centromere_file
  doc: A tab-delimited, BED-like file indicating centromere locations by chromosome    --output-file   Output
    file to contain informative variants
  type: File
  inputBinding:
    prefix: --centromere-file
- id: in_output_windows
  doc: Output file to contain RHRO windows. Otherwise they print to STDOUT
  type: File
  inputBinding:
    prefix: --output-windows
- id: in_inheritance
  doc: 'Presumed model of inheritance: dominant, recessive, x-linked [dominant]'
  type: boolean
  inputBinding:
    prefix: --inheritance
- id: in_jar
  doc: ''
  type: string
  inputBinding:
    prefix: -jar
- id: in_java
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_rh_ro
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_vcf
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_centromere_file
  doc: A tab-delimited, BED-like file indicating centromere locations by chromosome    --output-file   Output
    file to contain informative variants
  type: File
  outputBinding:
    glob: $(inputs.in_centromere_file)
- id: out_output_windows
  doc: Output file to contain RHRO windows. Otherwise they print to STDOUT
  type: File
  outputBinding:
    glob: $(inputs.in_output_windows)
cwlVersion: v1.1
baseCommand:
- mendelscan
- rhro
