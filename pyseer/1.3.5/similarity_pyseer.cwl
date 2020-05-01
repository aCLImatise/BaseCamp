#!/usr/bin/env cwl-runner

baseCommand:
- similarity_pyseer
class: CommandLineTool
cwlVersion: v1.0
id: similarity_pyseer
inputs:
- doc: List of sample names to use
  id: samples
  inputBinding:
    position: 0
  type: string
- doc: Kmers file
  id: km_ers
  inputBinding:
    prefix: --kmers
  type: string
- doc: VCF file. Will filter any non 'PASS' sites
  id: vcf
  inputBinding:
    prefix: --vcf
  type: string
- doc: Presence/absence .Rtab matrix as produced by roary and piggy
  id: pres
  inputBinding:
    prefix: --pres
  type: string
- doc: 'Minimum AF [Default: 0.01]'
  id: min_af
  inputBinding:
    prefix: --min-af
  type: long
- doc: 'Maximum AF [Default: 0.99]'
  id: max_af
  inputBinding:
    prefix: --max-af
  type: long
- doc: 'Maximum missing (vcf/Rtab) [Default: 0.05]'
  id: max_missing
  inputBinding:
    prefix: --max-missing
  type: long
- doc: 'Uncompressed kmers file [Default: gzipped]'
  id: uncompressed
  inputBinding:
    prefix: --uncompressed
  type: boolean
