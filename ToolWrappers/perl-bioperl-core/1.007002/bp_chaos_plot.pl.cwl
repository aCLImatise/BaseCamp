class: CommandLineTool
id: bp_chaos_plot.pl.cwl
inputs:
- id: in_g_slash_graphics
  doc: "TYPE\n-w/--width=600 -h/--height=400\nValid graphics formats: (wbmp,gd,gif,jpeg,png,gd2)\n\
    Image size defaults to 600x400, SEQFORMAT to fasta\nINPUTFILE can also be read\
    \ from STDIN\n"
  type: File
  inputBinding:
    prefix: -g/--graphics
- id: in_f_slash_format
  doc: ''
  type: string
  inputBinding:
    prefix: -f/--format
- id: in_i_slash_input
  doc: ''
  type: File
  inputBinding:
    prefix: -i/--input
- id: in_chaos_plot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_g_slash_graphics
  doc: "TYPE\n-w/--width=600 -h/--height=400\nValid graphics formats: (wbmp,gd,gif,jpeg,png,gd2)\n\
    Image size defaults to 600x400, SEQFORMAT to fasta\nINPUTFILE can also be read\
    \ from STDIN\n"
  type: File
  outputBinding:
    glob: $(inputs.in_g_slash_graphics)
cwlVersion: v1.1
baseCommand:
- bp_chaos_plot.pl
