class: CommandLineTool
id: ppanini_rocplot.cwl
inputs:
- id: in_p_panini_output
  doc: PPANINI output table
  type: string
  inputBinding:
    prefix: --ppanini-output
- id: in_essential_genes_one
  doc: "<feature id>\na list of essential genes)"
  type: long
  inputBinding:
    prefix: --essential-genes1
- id: in_essential_genes_two
  doc: "<feature id>\na list of essential genes)"
  type: long
  inputBinding:
    prefix: --essential-genes2
- id: in_master_plot
  doc: plotting master figure of the paper
  type: boolean
  inputBinding:
    prefix: --master-plot
- id: in_plot_meta_genomics
  doc: plotting based of metagenomics priority score
  type: boolean
  inputBinding:
    prefix: --plot-metagenomics
- id: in_plot_genomics
  doc: plotting based of genomics priority score
  type: boolean
  inputBinding:
    prefix: --plot-genomics
- id: in_path
  doc: path for inputs and/or outputs
  type: File
  inputBinding:
    prefix: --path
- id: in_outfile
  doc: output file
  type: File
  inputBinding:
    prefix: --outfile
- id: in_beta
  doc: beta is a weight of contribution, B * prevelence and (1-B) * abundance
  type: long
  inputBinding:
    prefix: --beta
- id: in_size
  doc: size of the plot in inches
  type: long
  inputBinding:
    prefix: --size
- id: in_output
  doc: a name or output file
  type: File
  inputBinding:
    prefix: --output
- id: in_niche
  doc: niche name
  type: string
  inputBinding:
    prefix: --niche
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: output file
  type: File
  outputBinding:
    glob: $(inputs.in_outfile)
- id: out_output
  doc: a name or output file
  type: File
  outputBinding:
    glob: $(inputs.in_output)
cwlVersion: v1.1
baseCommand:
- ppanini_rocplot
