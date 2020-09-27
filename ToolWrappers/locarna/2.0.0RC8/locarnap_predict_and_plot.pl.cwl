class: CommandLineTool
id: locarnap_predict_and_plot.pl.cwl
inputs:
- id: in_man
  doc: Full documentation
  type: boolean
  inputBinding:
    prefix: --man
- id: in_test
  doc: Test
  type: boolean
  inputBinding:
    prefix: --test
- id: in_output_dir
  doc: Output directory (def=Relplots)
  type: Directory
  inputBinding:
    prefix: --output-dir
- id: in_dont_plot
  doc: Skip plotting, only output
  type: boolean
  inputBinding:
    prefix: --dont-plot
- id: in_show_sw
  doc: Show the structure weight in the plot
  type: boolean
  inputBinding:
    prefix: --show-sw
- id: in_rev_compl
  doc: Draw for reverse complement (3'-5')
  type: boolean
  inputBinding:
    prefix: --revcompl
- id: in_write_subseq
  doc: Write the subsequence of fit
  type: boolean
  inputBinding:
    prefix: --write-subseq
- id: in_output_format
  doc: Output format (f = pdf or png, def=pdf)
  type: string
  inputBinding:
    prefix: --output-format
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: Output directory (def=Relplots)
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- locarnap-predict-and-plot.pl
