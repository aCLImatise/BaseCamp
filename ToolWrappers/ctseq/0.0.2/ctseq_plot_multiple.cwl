class: CommandLineTool
id: ctseq_plot_multiple.cwl
inputs:
- id: in_dir
  doc: "Path to directory where you want your plots to be\ncreated. If no path is\
    \ given, ctseq will create the\nplots in your current working directory. Remember\
    \ to\ninclude a file ending in '_directories.txt' containing\nthe paths of the\
    \ directories containing the data you\nwant to plot"
  type: File?
  inputBinding:
    prefix: --dir
- id: in_frag_info
  doc: "Name of file containing your fragment info file for\nthese combined plots.\
    \ If not in same directory as your\ncurrent working directory, please designate\
    \ full path\nto the 'fragInfo' file. See documentation for more info\n(required)"
  type: File?
  inputBinding:
    prefix: --fragInfo
- id: in_name
  doc: "Desired name to be used as the prefix for the file\nnames of these plots (required)\n"
  type: File?
  inputBinding:
    prefix: --name
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ctseq
- plot_multiple
