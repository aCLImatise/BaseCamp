#!/usr/bin/env cwl-runner

baseCommand:
- SampleSimilarity
class: CommandLineTool
cwlVersion: v1.0
id: samplesimilarity
inputs:
- doc: Input variant lists in VCF format (two or more). If only one file is given,
    each line in this file is interpreted as an input file path.
  id: in
  inputBinding:
    prefix: -in
  type: File
- doc: "Output file. If unset, writes to STDOUT. Default value: ''"
  id: out
  inputBinding:
    prefix: -out
  type: File
- doc: "Mode (input format). Default value: 'vcf' Valid: 'vcf,bam'"
  id: mode
  inputBinding:
    prefix: -mode
  type: string
- doc: "Restrict similarity calculation to variants in target region. Default value:\
    \ ''"
  id: roi
  inputBinding:
    prefix: -roi
  type: File
- doc: "Includes gonosomes into calculation (by default only variants on autosomes\
    \ are considered). Default value: 'false'"
  id: include_go_no_some_s
  inputBinding:
    prefix: -include_gonosomes
  type: boolean
- doc: "Skip multi-allelic variants instead of throwing an error (VCF mode). Default\
    \ value: 'false'"
  id: skip_multi
  inputBinding:
    prefix: -skip_multi
  type: boolean
- doc: "Minimum coverage to consider a SNP for the analysis (BAM mode). Default value:\
    \ '30'"
  id: min_cov
  inputBinding:
    prefix: -min_cov
  type: long
- doc: "The maximum number of high-coverage SNPs to extract from BAM. 0 means unlimited\
    \ (BAM mode). Default value: '2000'"
  id: max_snps
  inputBinding:
    prefix: -max_snps
  type: long
- doc: "Genome build used to generate the input (BAM mode). Default value: 'hg19'\
    \ Valid: 'hg19,hg38'"
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
