#!/usr/bin/env cwl-runner

baseCommand:
- fasten_kmer
class: CommandLineTool
cwlVersion: v1.0
id: fasten_kmer
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
- doc: The size of the kmer
  id: km_er_length
  inputBinding:
    prefix: --kmer-length
  type: long
