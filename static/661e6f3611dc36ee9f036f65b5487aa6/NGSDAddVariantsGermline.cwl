class: CommandLineTool
id: NGSDAddVariantsGermline.cwl
inputs:
- id: in_ps
  doc: Processed sample name
  type: string?
  inputBinding:
    prefix: -ps
- id: in_var
  doc: "Small variant list in GSvar format (as produced by megSAP).\nDefault value:\
    \ ''"
  type: File?
  inputBinding:
    prefix: -var
- id: in_var_force
  doc: "Force import of small variants, even if already imported.\nDefault value:\
    \ 'false'"
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
- id: in_sv
  doc: "SV list in Bedpe format (as produced by megSAP).\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -sv
- id: in_sv_force
  doc: "Force import of SVs, even if already imported.\nDefault value: 'false'"
  type: boolean?
  inputBinding:
    prefix: -sv_force
- id: in_out
  doc: "Output file. If unset, writes to STDOUT.\nDefault value: ''"
  type: File?
  inputBinding:
    prefix: -out
- id: in_max_af
  doc: "Maximum allele frequency of small variants to import (1000g and gnomAD).\n\
    Default value: '0.05'"
  type: double?
  inputBinding:
    prefix: -max_af
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
hints: []
cwlVersion: v1.1
baseCommand:
- NGSDAddVariantsGermline
