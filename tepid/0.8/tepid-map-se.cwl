#!/usr/bin/env cwl-runner

baseCommand:
- tepid-map-se
class: CommandLineTool
cwlVersion: v1.0
id: tepid-map-se
inputs:
- doc: path to bowtie2 index
  id: x
  inputBinding:
    prefix: -x
  type: boolean
- doc: path to yaha index
  id: y
  inputBinding:
    prefix: -y
  type: boolean
- doc: number of cores to use
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: sample name
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: fastq file containing reads
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: recursive (optional)
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: gzip fastq files (optional)
  id: z
  inputBinding:
    prefix: -z
  type: boolean
