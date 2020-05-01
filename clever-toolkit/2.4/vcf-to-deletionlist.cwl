#!/usr/bin/env cwl-runner

baseCommand:
- vcf-to-deletionlist
class: CommandLineTool
cwlVersion: v1.0
id: vcf-to-deletionlist
inputs:
- doc: Maximal length to be considered.
  id: m
  inputBinding:
    prefix: -m
  type: long
- doc: Include deletions marked as IMPRECISE.
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: Print list of genotypes as comma-separated list in last column.
  id: g
  inputBinding:
    prefix: -g
  type: boolean
