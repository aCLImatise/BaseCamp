class: CommandLineTool
id: rsem_plot_transcript_wiggles.cwl
inputs:
- id: in_gene_list
  doc: 'The input-list is a list of gene ids. (Default: off)'
  type: boolean
  inputBinding:
    prefix: --gene-list
- id: in_transcript_list
  doc: "The input-list is a list of transcript ids. This option can only be\nturned\
    \ on if allele-specific expression is calculated. (Default:\noff)"
  type: boolean
  inputBinding:
    prefix: --transcript-list
- id: in_show_unique
  doc: "Show the wiggle plots as stacked bar plots. See description section\nfor details.\
    \ (Default: off)"
  type: boolean
  inputBinding:
    prefix: --show-unique
- id: in_p_slash_num_threads
  doc: 'Set the number of threads we can use. (Default: 1)'
  type: long
  inputBinding:
    prefix: -p/--num-threads
- id: in_memory_per_thread
  doc: "Set the maximum allowable memory per thread. <string> represents the\nmemory\
    \ and accepts suffices 'K/M/G'. (Default: 1G)"
  type: string
  inputBinding:
    prefix: --memory-per-thread
- id: in_h_slash_help
  doc: Show help information.
  type: boolean
  inputBinding:
    prefix: -h/--help
- id: in_sample_name
  doc: The name of the sample analyzed.
  type: string
  inputBinding:
    position: 0
- id: in_input_list
  doc: "A list of transcript ids or gene ids. But it cannot be a mixture of\ntranscript\
    \ & gene ids. Each id occupies one line without extra\nspaces."
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsem-plot-transcript-wiggles
