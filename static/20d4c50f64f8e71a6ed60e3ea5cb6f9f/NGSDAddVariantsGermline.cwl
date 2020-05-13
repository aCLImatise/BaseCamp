class: CommandLineTool
id: NGSDAddVariantsGermline.cwl
inputs:
- id: ps
  doc: Processed sample name
  type: string
  inputBinding:
    prefix: -ps
- id: var
  doc: "Small variant list in GSvar format (as produced by megSAP). Default value:\
    \ ''"
  type: File
  inputBinding:
    prefix: -var
- id: var_force
  doc: "Force import of small variants, even if already imported. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -var_force
- id: cnv
  doc: "CNV list in TSV format (as produced by megSAP). Default value: ''"
  type: File
  inputBinding:
    prefix: -cnv
- id: cnv_force
  doc: "Force import of CNVs, even if already imported. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -cnv_force
- id: out
  doc: "Output file. If unset, writes to STDOUT. Default value: ''"
  type: File
  inputBinding:
    prefix: -out
- id: max_af
  doc: "Maximum allele frequency of small variants to import (1000g and gnomAD). Default\
    \ value: '0.05'"
  type: double
  inputBinding:
    prefix: -max_af
- id: test
  doc: "Uses the test database instead of on the production database. Default value:\
    \ 'false'"
  type: boolean
  inputBinding:
    prefix: -test
- id: debug
  doc: "Enable verbose debug output. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -debug
- id: no_time
  doc: "Disable timing output. Default value: 'false'"
  type: boolean
  inputBinding:
    prefix: -no_time
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
- NGSDAddVariantsGermline
