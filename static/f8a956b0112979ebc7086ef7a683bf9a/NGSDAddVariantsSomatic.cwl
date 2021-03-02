class: CommandLineTool
id: NGSDAddVariantsSomatic.cwl
inputs:
- id: in_t_ps
  doc: Tumor processed sample name
  type: string?
  inputBinding:
    prefix: -t_ps
- id: in_n_ps
  doc: Normal processed sample name
  type: string?
  inputBinding:
    prefix: -n_ps
- id: in_var
  doc: "Small variant list (i.e. SNVs and small INDELs) in GSvar format (as produced\
    \ by megSAP).\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -var
- id: in_var_force
  doc: "Force import of detected small variants, even if already imported.\nDefault\
    \ value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -var_force
- id: in_cnv
  doc: "CNV list in TSV format (as produced by megSAP).\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -cnv
- id: in_cnv_force
  doc: "Force import of CNVs, even if already imported.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -cnv_force
- id: in_out
  doc: "Output file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -out
- id: in_test
  doc: "Uses the test database instead of on the production database.\nDefault value:\
    \ 'false'"
  type: boolean?
  inputBinding:
    prefix: -test
- id: in_debug
  doc: "Enable verbose debug output.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -debug
- id: in_no_time
  doc: "Disable timing output.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -no_time
- id: in_changelog
  doc: Prints changeloge and exits.
  type: boolean?
  inputBinding:
    prefix: --changelog
- id: in_tdx
  doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  type: boolean?
  inputBinding:
    prefix: --tdx
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "Output file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ngs-bits:2020_12--py39h5902420_0
cwlVersion: v1.1
baseCommand:
- NGSDAddVariantsSomatic
