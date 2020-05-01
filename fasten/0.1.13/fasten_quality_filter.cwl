#!/usr/bin/env cwl-runner

baseCommand:
- fasten_quality_filter
class: CommandLineTool
cwlVersion: v1.0
id: fasten_quality_filter
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
- doc: The maximum quality at which a base will be transformed to 'N'
  id: max_quality
  inputBinding:
    prefix: --max-quality
  type: long
