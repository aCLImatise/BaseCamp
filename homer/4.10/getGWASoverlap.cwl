#!/usr/bin/env cwl-runner

baseCommand:
- getGWASoverlap.pl
class: CommandLineTool
cwlVersion: v1.0
id: getgwasoverlap.pl
inputs:
- doc: '<#> (Overlap distance, default: 1000)'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: '<#> (minimum number of significant SNPs to consider study, default: 10)'
  id: min
  inputBinding:
    prefix: -min
  type: boolean
- doc: '<#> (number of threads to use, default: 1)'
  id: cpu
  inputBinding:
    prefix: -cpu
  type: boolean
- doc: <path-to-Reference LD info> (perform enrichment test with GREGOR)
  id: gregor
  inputBinding:
    prefix: -GREGOR
  type: File
- doc: <#> (LD threshold for 'buddy SNPs', default 0.8, must be greater than 0.7)
  id: ld
  inputBinding:
    prefix: -LD
  type: boolean
- doc: <#> (only analyze this study)
  id: study_id
  inputBinding:
    prefix: -studyID
  type: boolean
- doc: <#> (only analyze this study)
  id: study_id_file
  inputBinding:
    prefix: -studyIDfile
  type: boolean
- doc: (output overlapping snps & buddies as a BED file)
  id: snp_out
  inputBinding:
    prefix: -snpOut
  type: string
- doc: (output all SNPs, even if they aren't overlapping)
  id: snp_out_all
  inputBinding:
    prefix: -snpOutAll
  type: boolean
