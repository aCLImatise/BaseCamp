class: CommandLineTool
id: ctseq_plot.cwl
inputs:
- id: in_dir
  doc: "Path to directory where you have your plot input files.\nIf no '--dir' is\
    \ specified, ctseq will look in your\ncurrent directory."
  type: File?
  inputBinding:
    prefix: --dir
- id: in_frag_info
  doc: "Name of file containing your fragment info file for\nthis sequencing run.\
    \ If not in same directory as your\nplot input files, please designate full path\
    \ to the\n'fragInfo' file. See documentation for more info\n(required)\n"
  type: File?
  inputBinding:
    prefix: --fragInfo
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ctseq
- plot
