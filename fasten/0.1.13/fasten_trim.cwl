#!/usr/bin/env cwl-runner

baseCommand:
- fasten_trim
class: CommandLineTool
cwlVersion: v1.0
id: fasten_trim
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
- doc: 'The first base to keep (default: 0)'
  id: first_base
  inputBinding:
    prefix: --first-base
  type: long
- doc: 'The last base to keep. If negative, counts from the right. (default: 0)'
  id: last_base
  inputBinding:
    prefix: --last-base
  type: long
