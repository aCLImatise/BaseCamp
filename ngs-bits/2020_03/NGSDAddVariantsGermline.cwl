#!/usr/bin/env cwl-runner

baseCommand:
- NGSDAddVariantsGermline
class: CommandLineTool
cwlVersion: v1.0
id: ngsdaddvariantsgermline
inputs:
- doc: Processed sample name
  id: ps
  inputBinding:
    prefix: -ps
  type: string
- doc: "Small variant list in GSvar format (as produced by megSAP). Default value:\
    \ ''"
  id: var
  inputBinding:
    prefix: -var
  type: File
- doc: "Force import of small variants, even if already imported. Default value: 'false'"
  id: var_force
  inputBinding:
    prefix: -var_force
  type: boolean
- doc: "CNV list in TSV format (as produced by megSAP). Default value: ''"
  id: cnv
  inputBinding:
    prefix: -cnv
  type: File
- doc: "Force import of CNVs, even if already imported. Default value: 'false'"
  id: cnv_force
  inputBinding:
    prefix: -cnv_force
  type: boolean
- doc: "Output file. If unset, writes to STDOUT. Default value: ''"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Maximum allele frequency of small variants to import (1000g and gnomAD). Default\
    \ value: '0.05'"
  id: max_af
  inputBinding:
    prefix: -max_af
  type: double
- doc: "Uses the test database instead of on the production database. Default value:\
    \ 'false'"
  id: test
  inputBinding:
    prefix: -test
  type: boolean
- doc: "Enable verbose debug output. Default value: 'false'"
  id: debug
  inputBinding:
    prefix: -debug
  type: boolean
- doc: "Disable timing output. Default value: 'false'"
  id: no_time
  inputBinding:
    prefix: -no_time
  type: boolean
- doc: Prints changeloge and exits.
  id: changelog
  inputBinding:
    prefix: --changelog
  type: boolean
- doc: Writes a Tool Definition Xml file. The file name is the application name with
    the suffix '.tdx'.
  id: tdx
  inputBinding:
    prefix: --tdx
  type: boolean
