#!/usr/bin/env cwl-runner

baseCommand:
- split-priors-by-chromosome
class: CommandLineTool
cwlVersion: v1.0
id: split-priors-by-chromosome
inputs:
- doc: ''
  id: output_prefix
  inputBinding:
    position: 0
  type: string
- doc: GZIP output files
  id: z
  inputBinding:
    prefix: -z
  type: boolean
- doc: Only extracts given chromosomes. Expects comma-separated list.
  id: c
  inputBinding:
    prefix: -c
  type: string
- doc: Read header of given BAM file and priors split by sample (encoded in read groups).
  id: s
  inputBinding:
    prefix: -s
  type: string
- doc: Use gzip instead of python zip module. Can be faster, but will spawn one gzip
    process for every chromosome/sample, which can be a lot.
  id: g
  inputBinding:
    prefix: -g
  type: boolean
