#!/usr/bin/env cwl-runner

baseCommand:
- fasten_pe
class: CommandLineTool
cwlVersion: v1.0
id: fasten_pe
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
- doc: Print each read. Useful for Unix pipes.
  id: print_reads
  inputBinding:
    prefix: --print-reads
  type: boolean
