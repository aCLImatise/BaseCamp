#!/usr/bin/env cwl-runner

baseCommand:
- MappingQC
class: CommandLineTool
cwlVersion: v1.0
id: mappingqc
inputs:
- doc: Input BAM file.
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output qcML file. If unset, writes to STDOUT. Default value: ''"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Input target region BED file (for panel, WES, etc.). Default value: ''"
  id: roi
  inputBinding:
    prefix: -roi
  type: File
- doc: "WGS mode without target region. Genome information is taken from the BAM file.\
    \ Default value: 'false'"
  id: wgs
  inputBinding:
    prefix: -wgs
  type: boolean
- doc: "RNA mode without target region. Genome information is taken from the BAM file.\
    \ Default value: 'false'"
  id: rna
  inputBinding:
    prefix: -rna
  type: boolean
- doc: "Writes TXT format instead of qcML. Default value: 'false'"
  id: txt
  inputBinding:
    prefix: -txt
  type: boolean
- doc: "Minmum mapping quality to consider a read mapped. Default value: '1'"
  id: min_mapq
  inputBinding:
    prefix: -min_mapq
  type: long
- doc: "Disables sample contamination calculation, e.g. for tumor or non-human samples.\
    \ Default value: 'false'"
  id: no_cont
  inputBinding:
    prefix: -no_cont
  type: boolean
- doc: "Enables verbose debug outout. Default value: 'false'"
  id: debug
  inputBinding:
    prefix: -debug
  type: boolean
- doc: "Genome build used to generate the input (needed for contamination only). Default\
    \ value: 'hg19' Valid: 'hg19,hg38'"
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
