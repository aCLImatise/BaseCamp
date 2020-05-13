class: CommandLineTool
id: rsem_plot_transcript_wiggles.cwl
inputs:
- id: sample_name
  doc: The name of the sample analyzed.
  type: string
  inputBinding:
    position: 0
- id: input_list
  doc: A list of transcript ids or gene ids. But it cannot be a mixture of transcript
    & gene ids. Each id occupies one line without extra spaces.
  type: string
  inputBinding:
    position: 1
- id: output_plot_file
  doc: The file name of the pdf file which contains all plots.
  type: string
  inputBinding:
    position: 2
- id: gene_list
  doc: 'The input-list is a list of gene ids. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --gene-list
- id: transcript_list
  doc: 'The input-list is a list of transcript ids. This option can only be turned
    on if allele-specific expression is calculated. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --transcript-list
- id: show_unique
  doc: 'Show the wiggle plots as stacked bar plots. See description section for details.
    (Default: off)'
  type: boolean
  inputBinding:
    prefix: --show-unique
- id: p
  doc: '/--num-threads <int> Set the number of threads we can use. (Default: 1)'
  type: boolean
  inputBinding:
    prefix: -p
- id: memory_per_thread
  doc: "Set the maximum allowable memory per thread. <string> represents the memory\
    \ and accepts suffices 'K/M/G'. (Default: 1G)"
  type: string
  inputBinding:
    prefix: --memory-per-thread
outputs: []
cwlVersion: v1.1
baseCommand:
- rsem-plot-transcript-wiggles
