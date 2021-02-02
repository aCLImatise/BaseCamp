class: CommandLineTool
id: SampleGender.cwl
inputs:
- id: in_in
  doc: Input BAM file(s).
  type: File
  inputBinding:
    prefix: -in
- id: in_method
  doc: "Method selection: Read distribution on X and Y chromosome (xy), fraction of\
    \ heterocygous variants on X chromosome (hetx), or coverage of SRY gene (sry).\n\
    Valid: 'xy,hetx,sry'"
  type: string
  inputBinding:
    prefix: -method
- id: in_out
  doc: "Output TSV file - one line per input BAM file. If unset, writes to STDOUT.\n\
    Default value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: in_max_female
  doc: "Maximum Y/X ratio for female (method xy).\nDefault value: '0.06'"
  type: double
  inputBinding:
    prefix: -max_female
- id: in_min_male
  doc: "Minimum Y/X ratio for male (method xy).\nDefault value: '0.09'"
  type: double
  inputBinding:
    prefix: -min_male
- id: in_min_female
  doc: "Minimum heterocygous SNP fraction for female (method hetx).\nDefault value:\
    \ '0.24'"
  type: double
  inputBinding:
    prefix: -min_female
- id: in_max_male
  doc: "Maximum heterocygous SNP fraction for male (method hetx).\nDefault value:\
    \ '0.15'"
  type: double
  inputBinding:
    prefix: -max_male
- id: in_sry_cov
  doc: "Minimum average coverage of SRY gene for males (method sry).\nDefault value:\
    \ '20'"
  type: double
  inputBinding:
    prefix: -sry_cov
- id: in_build
  doc: "Genome build used to generate the input (methods hetx and sry).\nDefault value:\
    \ 'hg19'\nValid: 'hg19,hg38'"
  type: long
  inputBinding:
    prefix: -build
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
cwlVersion: v1.1
baseCommand:
- SampleGender
