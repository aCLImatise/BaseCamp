#!/usr/bin/env cwl-runner

baseCommand:
- SampleAncestry
class: CommandLineTool
cwlVersion: v1.0
id: sampleancestry
inputs:
- doc: Input variant list(s) in VCF format.
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output TSV file. If unset, writes to STDOUT. Default value: ''"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Minimum number of informative SNPs for population determination. If less SNPs\
    \ are found, 'NOT_ENOUGH_SNPS' is returned. Default value: '1000'"
  id: min_snps
  inputBinding:
    prefix: -min_snps
  type: long
- doc: "Minimum relative distance between first/second population score. If below\
    \ this score 'ADMIXED/UNKNOWN' is called. Default value: '0.15'"
  id: pop_dist
  inputBinding:
    prefix: -pop_dist
  type: double
- doc: "Genome build used to generate the input. Default value: 'hg19' Valid: 'hg19,hg38'"
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
