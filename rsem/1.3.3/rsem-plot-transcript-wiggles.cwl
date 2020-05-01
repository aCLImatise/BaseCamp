#!/usr/bin/env cwl-runner

baseCommand:
- rsem-plot-transcript-wiggles
class: CommandLineTool
cwlVersion: v1.0
id: rsem-plot-transcript-wiggles
inputs:
- doc: The name of the sample analyzed.
  id: sample_name
  inputBinding:
    position: 0
  type: string
- doc: A list of transcript ids or gene ids. But it cannot be a mixture of transcript
    & gene ids. Each id occupies one line without extra spaces.
  id: input_list
  inputBinding:
    position: 1
  type: string
- doc: The file name of the pdf file which contains all plots.
  id: output_plot_file
  inputBinding:
    position: 2
  type: string
- doc: 'The input-list is a list of gene ids. (Default: off)'
  id: gene_list
  inputBinding:
    prefix: --gene-list
  type: boolean
- doc: 'The input-list is a list of transcript ids. This option can only be turned
    on if allele-specific expression is calculated. (Default: off)'
  id: transcript_list
  inputBinding:
    prefix: --transcript-list
  type: boolean
- doc: 'Show the wiggle plots as stacked bar plots. See description section for details.
    (Default: off)'
  id: show_unique
  inputBinding:
    prefix: --show-unique
  type: boolean
- doc: '/--num-threads <int> Set the number of threads we can use. (Default: 1)'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: "Set the maximum allowable memory per thread. <string> represents the memory\
    \ and accepts suffices 'K/M/G'. (Default: 1G)"
  id: memory_per_thread
  inputBinding:
    prefix: --memory-per-thread
  type: string
