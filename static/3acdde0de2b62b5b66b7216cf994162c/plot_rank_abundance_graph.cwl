class: CommandLineTool
id: plot_rank_abundance_graph.py.cwl
inputs:
- id: otu_table_fp
  doc: path to the input OTU table (i.e., the output from make_otu_table.py) [REQUIRED]
  type: string
  inputBinding:
    prefix: --otu_table_fp
- id: sample_name
  doc: name of the sample to plot. Use "*" to plot all. [REQUIRED]
  type: string
  inputBinding:
    prefix: --sample_name
- id: result_fp
  doc: 'Path to store resulting figure file. File extension will be appended if not
    supplied (e.g.: rankfig -> rankfig.pdf). Additionally, a log file rankfig_log.txt
    will be created [REQUIRED]'
  type: string
  inputBinding:
    prefix: --result_fp
outputs: []
cwlVersion: v1.1
baseCommand:
- plot_rank_abundance_graph.py
