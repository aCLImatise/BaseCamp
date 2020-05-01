#!/usr/bin/env cwl-runner

baseCommand:
- kaijup
class: CommandLineTool
cwlVersion: v1.0
id: kaijup
inputs:
- doc: Name of database file (.fmi) file
  id: f
  inputBinding:
    prefix: -f
  type: File
- doc: Name of input file containing reads in FASTA or FASTQ format
  id: i
  inputBinding:
    prefix: -i
  type: File
- doc: Name of output file. If not specified, output will be printed to STDOUT
  id: o
  inputBinding:
    prefix: -o
  type: File
- doc: 'Number of parallel threads for classification (default: 1)'
  id: z
  inputBinding:
    prefix: -z
  type: long
- doc: 'Run mode, either "mem"  or "greedy" (default: greedy)'
  id: a
  inputBinding:
    prefix: -a
  type: string
- doc: 'Number of mismatches allowed in Greedy mode (default: 3)'
  id: e
  inputBinding:
    prefix: -e
  type: long
- doc: 'Minimum match length (default: 11)'
  id: m
  inputBinding:
    prefix: -m
  type: long
- doc: 'Minimum match score in Greedy mode (default: 65)'
  id: s
  inputBinding:
    prefix: -s
  type: long
- doc: Minimum E-value in Greedy mode
  id: e
  inputBinding:
    prefix: -E
  type: double
- doc: Enable SEG low complexity filter (enabled by default)
  id: x
  inputBinding:
    prefix: -x
  type: boolean
- doc: Disable SEG low complexity filter
  id: x
  inputBinding:
    prefix: -X
  type: boolean
- doc: Enable verbose output.
  id: v
  inputBinding:
    prefix: -v
  type: boolean
