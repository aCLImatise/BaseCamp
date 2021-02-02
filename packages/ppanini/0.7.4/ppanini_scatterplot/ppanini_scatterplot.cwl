class: CommandLineTool
id: ppanini_scatterplot.cwl
inputs:
- id: in_p_panini_output
  doc: PPANINI output table
  type: string
  inputBinding:
    prefix: --ppanini-output
- id: in_diamond_output
  doc: "<feature id>\na mapping file of gene-metagenom)"
  type: File
  inputBinding:
    prefix: --diamond-output
- id: in_master_plot
  doc: plotting master figure of the paper
  type: boolean
  inputBinding:
    prefix: --master-plot
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
- id: in_size
  doc: size of the plot in inches
  type: long
  inputBinding:
    prefix: --size
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: output file
  type: File
  outputBinding:
    glob: $(inputs.in_outfile)
cwlVersion: v1.1
baseCommand:
- ppanini_scatterplot
