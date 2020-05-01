#!/usr/bin/env cwl-runner

baseCommand:
- fastspar_bootstrap
class: CommandLineTool
cwlVersion: v1.0
id: fastspar_bootstrap
inputs:
- doc: /--otu_table <path> OTU input table
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: /--number <path> Number of bootstrap samples to generate
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: /--prefix <str> Prefix out bootstrap output files
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: 'Number of threads (default: 1)'
  id: threads
  inputBinding:
    prefix: --threads
  type: long
- doc: 'Random number generator seed (default: 1)'
  id: seed
  inputBinding:
    prefix: --seed
  type: long
- doc: --version Display version information and exit
  id: v
  inputBinding:
    prefix: -v
  type: boolean
