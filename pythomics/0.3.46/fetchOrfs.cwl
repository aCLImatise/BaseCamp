#!/usr/bin/env cwl-runner

baseCommand:
- fetchOrfs.py
class: CommandLineTool
cwlVersion: v1.0
id: fetchorfs.py
inputs:
- doc: 'Threads to run (default: 1)'
  id: p
  inputBinding:
    prefix: -p
  type: string
- doc: '[FASTA], --fasta [FASTA] The fasta file to operate on. (default: None)'
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: "[OUT], --out [OUT] The file to write results to. Leave blank for stdout, (default:\
    \ <_io.TextIOWrapper name='<stdout>' mode='w' encoding='utf-8'>)"
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: 'Minimum ORF length in amino acids. (default: 50)'
  id: min
  inputBinding:
    prefix: --min
  type: long
- doc: 'Search both strands for ORFs. (default: False)'
  id: both_strands
  inputBinding:
    prefix: --both-strands
  type: boolean
- doc: 'Output ORFs starting with amino acids other than MET (default: False)'
  id: no_met_start
  inputBinding:
    prefix: --no-met-start
  type: boolean
- doc: 'Truncate leading amino acids up to MET (default: False)'
  id: from_met
  inputBinding:
    prefix: --from-met
  type: boolean
- doc: 'Truncate leading amino acids up to MET, but keep the untruncated version as
    well. (default: False)'
  id: from_met_keep
  inputBinding:
    prefix: --from-met-keep
  type: boolean
