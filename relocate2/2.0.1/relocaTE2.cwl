#!/usr/bin/env cwl-runner

baseCommand:
- relocaTE2.py
class: CommandLineTool
cwlVersion: v1.0
id: relocate2.py
inputs:
- doc: string define single-end reads, default = ".unPaired"
  id: unpaired_id
  inputBinding:
    prefix: --unpaired_id
  type: string
- doc: string define sample name which will present in output GFF, default = "not_given"
  id: sample
  inputBinding:
    prefix: --sample
  type: string
- doc: aligner used to map reads to repeat elements, default=blat
  id: aligner
  inputBinding:
    prefix: --aligner
  type: string
- doc: length cutoff threshold for match between reads and repeat elements. Large
    value will lead to less sensitive but more accuracy, default = 10
  id: len_cut_match
  inputBinding:
    prefix: --len_cut_match
  type: string
- doc: length cutoff threshold for trimed reads after trimming repeat sequence from
    reads. Large value will lead to less sensitive but more accuracy, default = 10
  id: len_cut_trim
  inputBinding:
    prefix: --len_cut_trim
  type: string
- doc: Number of mismatches allowed for matches between reads and repeat elements,
    default = 2
  id: mismatch
  inputBinding:
    prefix: --mismatch
  type: string
- doc: Number of mismatches allowed for matches between junction reads and repeat
    elements, default = 2
  id: mismatch_junction
  inputBinding:
    prefix: --mismatch_junction
  type: string
- doc: Number to control steps of pipeline, default = "1234567"
  id: step
  inputBinding:
    prefix: --step
  type: string
- doc: write shell scripts only while this script excute
  id: dry_run
  inputBinding:
    prefix: --dry_run
  type: boolean
- doc: run while this script excute
  id: run
  inputBinding:
    prefix: --run
  type: boolean
- doc: split fastq into 1 M chunks to run blat/bwa jobs
  id: split
  inputBinding:
    prefix: --split
  type: boolean
- doc: 'verbose grade to print out information in all scripts: range from 0 to 4,
    default = 2'
  id: verbose
  inputBinding:
    prefix: --verbose
  type: string
