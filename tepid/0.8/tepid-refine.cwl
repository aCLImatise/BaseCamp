#!/usr/bin/env cwl-runner

baseCommand:
- tepid-refine
class: CommandLineTool
cwlVersion: v1.0
id: tepid-refine
inputs:
- doc: keep all intermediate files
  id: keep
  inputBinding:
    prefix: --keep
  type: boolean
- doc: File containing collapsed TE insertions for all samples in population
  id: insertions
  inputBinding:
    prefix: --insertions
  type: string
- doc: File containing collapsed TE deletions for all samples in population
  id: deletions
  inputBinding:
    prefix: --deletions
  type: string
- doc: number of processors
  id: proc
  inputBinding:
    prefix: --proc
  type: string
- doc: TE annotation bedfile
  id: te
  inputBinding:
    prefix: --te
  type: string
- doc: sample name
  id: name
  inputBinding:
    prefix: --name
  type: string
- doc: bam file from bowtie2
  id: conc
  inputBinding:
    prefix: --conc
  type: string
- doc: split reads bam file from yaha
  id: split
  inputBinding:
    prefix: --split
  type: string
- doc: List of all sample names
  id: all_samples
  inputBinding:
    prefix: --all_samples
  type: string
