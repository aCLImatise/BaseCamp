#!/usr/bin/env cwl-runner

baseCommand:
- ReadFilter
class: CommandLineTool
cwlVersion: v1.0
id: readfilter
inputs:
- doc: '(0 arg) :    Output unmapped reads'
  id: unmapped_only
  inputBinding:
    prefix: -unmapped-only
  type: boolean
- doc: "(1 arg) :    Flank length  [default '-1']"
  id: flank_length
  inputBinding:
    prefix: -flank-length
  type: boolean
- doc: "(1 arg) :    Gap length (in the scaffold)  [default '-1']"
  id: gap_length
  inputBinding:
    prefix: -gap-length
  type: boolean
- doc: '(1 arg) :    Gap breakpoint position'
  id: breakpoint
  inputBinding:
    prefix: -breakpoint
  type: boolean
- doc: '(1 arg) :    Scaffold name'
  id: scaffold
  inputBinding:
    prefix: -scaffold
  type: boolean
- doc: '(1 arg) :    Insert size standard deviation'
  id: std_dev
  inputBinding:
    prefix: -std-dev
  type: boolean
- doc: '(1 arg) :    Mean insert size'
  id: mean
  inputBinding:
    prefix: -mean
  type: boolean
- doc: '(1 arg) :    FASTA-formatted output file'
  id: reads
  inputBinding:
    prefix: -reads
  type: boolean
- doc: '(1 arg) :    Aligned BAM file'
  id: bam
  inputBinding:
    prefix: -bam
  type: boolean
- doc: "(1 arg) :    number of cores  [default '0']"
  id: nb_cores
  inputBinding:
    prefix: -nb-cores
  type: boolean
- doc: "(1 arg) :    verbosity level  [default '1']"
  id: verbose
  inputBinding:
    prefix: -verbose
  type: boolean
- doc: '(0 arg) :    version'
  id: version
  inputBinding:
    prefix: -version
  type: boolean
