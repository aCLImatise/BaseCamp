#!/usr/bin/env cwl-runner

baseCommand:
- dnase_to_javatreeview.py
class: CommandLineTool
cwlVersion: v1.0
id: dnase_to_javatreeview.py
inputs:
- doc: BED file of the regions you want to generate the heatmap for
  id: regions
  inputBinding:
    position: 0
  type: string
- doc: The BAM file containing the read data
  id: reads
  inputBinding:
    position: 1
  type: string
- doc: filename to write the CSV output to
  id: output
  inputBinding:
    position: 2
  type: string
- doc: 'Size of flanking area around centre of the regions to plot (default: 100)'
  id: window_size
  inputBinding:
    prefix: --window_size
  type: string
- doc: Ignores strand information in BED file
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: 'Orders output the same as the input (default: orders by FOS)'
  id: o
  inputBinding:
    prefix: -o
  type: boolean
- doc: Write absolute cut counts instead strand imbalanced counts
  id: a
  inputBinding:
    prefix: -a
  type: boolean
- doc: Normalise the cut data for each region between 0 and 1
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: Disable memory caching (low RAM mode)
  id: c
  inputBinding:
    prefix: -c
  type: boolean
- doc: Normalise for cutting bias
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: 'ATAC-seq mode (default: False)'
  id: a
  inputBinding:
    prefix: -A
  type: boolean
- doc: Location of the sorted, index
  id: bias_file
  inputBinding:
    prefix: --bias-file
  type: string
- doc: Randomise the ordering of the output
  id: r
  inputBinding:
    prefix: -r
  type: boolean
