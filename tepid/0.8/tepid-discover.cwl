#!/usr/bin/env cwl-runner

baseCommand:
- tepid-discover
class: CommandLineTool
cwlVersion: v1.0
id: tepid-discover
inputs:
- doc: keep all intermediate files
  id: keep
  inputBinding:
    prefix: --keep
  type: boolean
- doc: find deletions only
  id: deletions
  inputBinding:
    prefix: --deletions
  type: boolean
- doc: find insertions only
  id: insertions
  inputBinding:
    prefix: --insertions
  type: boolean
- doc: Report high-confidence variants only
  id: strict
  inputBinding:
    prefix: --strict
  type: boolean
- doc: Mask chromosomes in comma separated list or file
  id: mask
  inputBinding:
    prefix: --mask
  type: string
- doc: Supply discordant reads bam file
  id: discordant
  inputBinding:
    prefix: --discordant
  type: string
- doc: number of processors
  id: proc
  inputBinding:
    prefix: --proc
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
- doc: TE annotation bedfile
  id: te
  inputBinding:
    prefix: --te
  type: string
- doc: Run in single-end mode
  id: se
  inputBinding:
    prefix: --se
  type: boolean
