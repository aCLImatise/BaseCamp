#!/usr/bin/env cwl-runner

baseCommand:
- fasten_metrics
class: CommandLineTool
cwlVersion: v1.0
id: fasten_metrics
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
- doc: Print the metrics for each read. This creates very large output
  id: each_read
  inputBinding:
    prefix: --each-read
  type: boolean
- doc: Print the distribution for each metric. Must supply either 'normal' or 'nonparametric'
  id: distribution
  inputBinding:
    prefix: --distribution
  type: string
