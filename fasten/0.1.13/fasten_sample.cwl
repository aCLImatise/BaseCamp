#!/usr/bin/env cwl-runner

baseCommand:
- fasten_sample
class: CommandLineTool
cwlVersion: v1.0
id: fasten_sample
inputs:
- doc: 'Number of CPUs (default: 1)'
  id: num_cpus
  inputBinding:
    prefix: --numcpus
  type: long
- doc: The input reads are interleaved paired-end
  id: paired_end
  inputBinding:
    prefix: --paired-end
  type: boolean
- doc: Print more status messages
  id: verbose
  inputBinding:
    prefix: --verbose
  type: boolean
- doc: 'Frequency of sequences to print, 0 to 1. Default: 1'
  id: frequency
  inputBinding:
    prefix: --frequency
  type: double
