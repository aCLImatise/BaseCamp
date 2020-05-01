#!/usr/bin/env cwl-runner

baseCommand:
- SampleGender
class: CommandLineTool
cwlVersion: v1.0
id: samplegender
inputs:
- doc: Input BAM file(s).
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Method selection: Read distribution on X and Y chromosome (xy), fraction of\
    \ heterocygous variants on X chromosome (hetx), or coverage of SRY gene (sry).\
    \ Valid: 'xy,hetx,sry'"
  id: method
  inputBinding:
    prefix: -method
  type: string
- doc: "Output TSV file - one line per input BAM file. If unset, writes to STDOUT.\
    \ Default value: ''"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Maximum Y/X ratio for female (method xy). Default value: '0.06'"
  id: max_female
  inputBinding:
    prefix: -max_female
  type: double
- doc: "Minimum Y/X ratio for male (method xy). Default value: '0.09'"
  id: min_male
  inputBinding:
    prefix: -min_male
  type: double
- doc: "Minimum heterocygous SNP fraction for female (method hetx). Default value:\
    \ '0.24'"
  id: min_female
  inputBinding:
    prefix: -min_female
  type: double
- doc: "Maximum heterocygous SNP fraction for male (method hetx). Default value: '0.15'"
  id: max_male
  inputBinding:
    prefix: -max_male
  type: double
- doc: "Minimum average coverage of SRY gene for males (method sry). Default value:\
    \ '20'"
  id: sry_cov
  inputBinding:
    prefix: -sry_cov
  type: double
- doc: "Genome build used to generate the input (methods hetx and sry). Default value:\
    \ 'hg19' Valid: 'hg19,hg38'"
  id: build
  inputBinding:
    prefix: -build
  type: string
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
