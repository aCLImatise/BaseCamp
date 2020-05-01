#!/usr/bin/env cwl-runner

baseCommand:
- migmap
class: CommandLineTool
cwlVersion: v1.0
id: migmap
inputs:
- doc: Number of reads to take. [default = all]
  id: n
  inputBinding:
    prefix: -n
  type: long
- doc: Number of cores to use. [default = all available processors]
  id: p
  inputBinding:
    prefix: -p
  type: long
- doc: <2..40>                             Threshold for average quality of mutations
    and N-regions of CDR3 [default = 25]
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: '<chain1,...>                        Receptor gene and chain. Several chains
    can be specified, separated with commas. Allowed values: [TRA, TRB, TRG, TRD,
    IGH, IGL, IGK]. [required] --report <file>                     File to store MIGMAP
    report. Will append report line if file exists.'
  id: r
  inputBinding:
    prefix: -R
  type: boolean
- doc: 'Species. Allowed values: [human, mouse, rat, rabbit, rhesus_monkey]. [required]'
  id: s
  inputBinding:
    prefix: -S
  type: string
- doc: <fastq[.gz]>             Output unmapped reads in specified file.
  id: unmapped
  inputBinding:
    prefix: --unmapped
  type: boolean
- doc: Will use KABAT nomenclature for CDR/FW partitioning. [default = use IMGT nomenclature]
  id: use_kabat
  inputBinding:
    prefix: --use-kabat
  type: boolean
