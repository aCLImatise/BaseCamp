#!/usr/bin/env cwl-runner

baseCommand:
- cuffmerge
class: CommandLineTool
cwlVersion: v1.0
id: cuffmerge
inputs:
- doc: ''
  id: options
  inputBinding:
    position: 0
  type: string
- doc: ''
  id: assembly_gtf_list_txt
  inputBinding:
    position: 1
  type: string
- doc: '<output_dir>     Directory where merged assembly will be written  [ default:
    ./merged_asm  ]'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: /--ref-gtf                            An optional "reference" annotation GTF.
  id: g
  inputBinding:
    prefix: -g
  type: boolean
- doc: /--ref-sequence      <seq_dir>/<seq_fasta> Genomic DNA sequences for the reference.
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: '<0-1.0>          Discard isoforms with abundance below this       [ default:           0.05
    ]'
  id: min_isoform_fraction
  inputBinding:
    prefix: --min-isoform-fraction
  type: boolean
- doc: '/--num-threads       <int>            Use this many threads to merge assemblies.       [
    default:             1  ]'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: Keep all intermediate files during merge
  id: keep_tmp
  inputBinding:
    prefix: --keep-tmp
  type: boolean
