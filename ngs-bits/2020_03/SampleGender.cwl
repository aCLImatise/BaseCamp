class: CommandLineTool
id: SampleGender.cwl
inputs:
- id: in
  doc: Input BAM file(s).
  type: File
  inputBinding:
    prefix: -in
- id: method
  doc: "Method selection: Read distribution on X and Y chromosome (xy), fraction of\
    \ heterocygous variants on X chromosome (hetx), or coverage of SRY gene (sry).\
    \ Valid: 'xy,hetx,sry'"
  type: string
  inputBinding:
    prefix: -method
- id: out
  doc: "Output TSV file - one line per input BAM file. If unset, writes to STDOUT.\
    \ Default value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: max_female
  doc: "Maximum Y/X ratio for female (method xy). Default value: '0.06'"
  type: double
  inputBinding:
    prefix: -max_female
- id: min_male
  doc: "Minimum Y/X ratio for male (method xy). Default value: '0.09'"
  type: double
  inputBinding:
    prefix: -min_male
- id: min_female
  doc: "Minimum heterocygous SNP fraction for female (method hetx). Default value:\
    \ '0.24'"
  type: double
  inputBinding:
    prefix: -min_female
- id: max_male
  doc: "Maximum heterocygous SNP fraction for male (method hetx). Default value: '0.15'"
  type: double
  inputBinding:
    prefix: -max_male
- id: sry_cov
  doc: "Minimum average coverage of SRY gene for males (method sry). Default value:\
    \ '20'"
  type: double
  inputBinding:
    prefix: -sry_cov
- id: build
  doc: "Genome build used to generate the input (methods hetx and sry). Default value:\
    \ 'hg19' Valid: 'hg19,hg38'"
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
- SampleGender
