#!/usr/bin/env cwl-runner

baseCommand:
- fastspar
class: CommandLineTool
cwlVersion: v1.0
id: fastspar
inputs:
- doc: OTU input OTU count table
  id: otu_table
  inputBinding:
    prefix: --otu_table
  type: File
- doc: Correlation output table
  id: correlation
  inputBinding:
    prefix: -correlation
  type: File
- doc: Covariance output table
  id: covariance
  inputBinding:
    prefix: --covariance
  type: File
- doc: 'Number of interations to perform (default: 50)'
  id: iterations
  inputBinding:
    prefix: --iterations
  type: long
- doc: 'Number of exclusion interations to perform (default: 10)'
  id: exclusion_iterations
  inputBinding:
    prefix: --exclusion_iterations
  type: long
- doc: 'Correlation strength exclusion threshold (default: 0.1)'
  id: threshold
  inputBinding:
    prefix: --threshold
  type: double
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
- doc: 'Assume yes for prompts (default: unset)'
  id: yes
  inputBinding:
    prefix: --yes
  type: boolean
- doc: --version Display version information and exit
  id: v
  inputBinding:
    prefix: -v
  type: boolean
