#!/usr/bin/env cwl-runner

baseCommand:
- abruijn
class: CommandLineTool
cwlVersion: v1.0
id: abruijn
inputs:
- doc: enable debug output
  id: debug
  inputBinding:
    prefix: --debug
  type: boolean
- doc: try to resume previous assembly
  id: resume
  inputBinding:
    prefix: --resume
  type: boolean
- doc: 'number of parallel threads (default: 1)'
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: 'number of polishing iterations (default: 1)'
  id: iterations
  inputBinding:
    prefix: --iterations
  type: string
- doc: 'sequencing platform (default: pacbio)'
  id: platform
  inputBinding:
    prefix: --platform
  type: string
- doc: 'kmer size (default: auto)'
  id: km_er_size
  inputBinding:
    prefix: --kmer-size
  type: string
- doc: 'minimum overlap between reads (default: 5000)'
  id: min_overlap
  inputBinding:
    prefix: --min-overlap
  type: long
- doc: 'minimum kmer coverage (default: auto)'
  id: min_coverage
  inputBinding:
    prefix: --min-coverage
  type: long
- doc: 'maximum kmer coverage (default: auto)'
  id: max_coverage
  inputBinding:
    prefix: --max-coverage
  type: long
