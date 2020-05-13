class: CommandLineTool
id: MappingQC.cwl
inputs:
- id: in
  doc: Input BAM file.
  type: File
  inputBinding:
    prefix: -in
- id: out
  doc: "Output qcML file. If unset, writes to STDOUT. Default value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: roi
  doc: "Input target region BED file (for panel, WES, etc.). Default value: ''"
  type: File
  inputBinding:
    prefix: -roi
- id: wgs
  doc: "WGS mode without target region. Genome information is taken from the BAM file.\
    \ Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -wgs
- id: rna
  doc: "RNA mode without target region. Genome information is taken from the BAM file.\
    \ Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -rna
- id: txt
  doc: "Writes TXT format instead of qcML. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -txt
- id: min_mapq
  doc: "Minmum mapping quality to consider a read mapped. Default value: '1'"
  type: long
  inputBinding:
    prefix: -min_mapq
- id: no_cont
  doc: "Disables sample contamination calculation, e.g. for tumor or non-human samples.\
    \ Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -no_cont
- id: debug
  doc: "Enables verbose debug outout. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -debug
- id: build
  doc: "Genome build used to generate the input (needed for contamination only). Default\
    \ value: 'hg19' Valid: 'hg19,hg38'"
  type: string
  inputBinding:
    prefix: -build
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
- MappingQC
