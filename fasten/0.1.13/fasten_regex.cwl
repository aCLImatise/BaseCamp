#!/usr/bin/env cwl-runner

baseCommand:
- fasten_regex
class: CommandLineTool
cwlVersion: v1.0
id: fasten_regex
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
- doc: "Regular expression (default: '.')"
  id: regex
  inputBinding:
    prefix: --regex
  type: string
- doc: 'Which field to match on? ID, SEQ, QUAL. Default: SEQ'
  id: which
  inputBinding:
    prefix: --which
  type: string
