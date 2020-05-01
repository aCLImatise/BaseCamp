#!/usr/bin/env cwl-runner

baseCommand:
- dnase_average_profile.py
class: CommandLineTool
cwlVersion: v1.0
id: dnase_average_profile.py
inputs:
- doc: BED file of the regions you want to generate the average profile for
  id: regions
  inputBinding:
    position: 0
  type: string
- doc: The BAM file containing the DNase-seq data
  id: reads
  inputBinding:
    position: 1
  type: string
- doc: filename to write the output to
  id: output
  inputBinding:
    position: 2
  type: string
- doc: 'Size of flanking area around centre of the regions to plot (default: 100)'
  id: window_size
  inputBinding:
    prefix: --window_size
  type: string
- doc: Location of the sorted, index
  id: bias_file
  inputBinding:
    prefix: --bias-file
  type: string
- doc: Ignores any strand information in BED file and plots data relative to reference
    strand
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: Combine the strand information into one graph
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: Normalise cut counts to a fraction peaks
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: Normalise for cutting bias
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: ATAC-seq mode
  id: a
  inputBinding:
    prefix: -A
  type: boolean
