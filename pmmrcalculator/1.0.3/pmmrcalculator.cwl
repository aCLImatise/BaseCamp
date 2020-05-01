#!/usr/bin/env cwl-runner

baseCommand:
- pmmrcalculator
class: CommandLineTool
cwlVersion: v1.0
id: pmmrcalculator
inputs:
- doc: The desired input file prefix. Input files are assumed to be <INPUT PREFIX>.geno,
    <INPUT PREFIX>.snp and <INPUT PREFIX>.ind .
  id: input
  inputBinding:
    prefix: --Input
  type: string
- doc: The desired output file name. Omit to print to stdout.
  id: output
  inputBinding:
    prefix: --Output
  type: string
- doc: The desired input file suffix. Input files are assumed to be <INPUT PREFIX>.geno<INPUT
    SUFFIX>, <INPUT PREFIX>.snp<INPUT SUFFIX> and <INPUT PREFIX>.ind<INPUT SUFFIX>
    .
  id: suffix
  inputBinding:
    prefix: --Suffix
  type: string
