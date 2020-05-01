#!/usr/bin/env cwl-runner

baseCommand:
- vcfSampleCompare.pl
class: CommandLineTool
cwlVersion: v1.0
id: vcfsamplecompare.pl
inputs:
- doc: VCF outfile suffix (appended to -i).
  id: o
  inputBinding:
    prefix: -o
  type: string
- doc: '[STDOUT] Summary outfile suffix (appended to -i).'
  id: u
  inputBinding:
    prefix: -u
  type: string
- doc: '...     [any^] A group of sample names for difference comparisons. ^ See --extended
    usage.'
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: <int,...>...     [all*] Minimum number of samples to use in a group to determine
    difference with its partner.
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: '[0.7] Minimum observation ratio difference [0-1].'
  id: a
  inputBinding:
    prefix: -a
  type: string
- doc: Do not use genotype calls for sorting/filtering.
  id: no_g
  inputBinding:
    prefix: --no-g
  type: boolean
- doc: Do not filter variant rows.
  id: no_f
  inputBinding:
    prefix: --no-f
  type: boolean
- doc: Do not add samples to sample groups beyond the --min- group-size.
  id: no_w
  inputBinding:
    prefix: --no-w
  type: boolean
- doc: '[4] Minimum read depth (DP).'
  id: l
  inputBinding:
    prefix: -l
  type: long
- doc: '[20] Adequate read depth (DP).'
  id: x
  inputBinding:
    prefix: -x
  type: long
- doc: '[<cnt>]  Print detailed usage.'
  id: extended
  inputBinding:
    prefix: --extended
  type: boolean
