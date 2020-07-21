class: CommandLineTool
id: ../../../ctseq_plot.cwl
inputs:
- id: dir
  doc: Path to directory where you have your plot input files. If no '--dir' is specified,
    ctseq will look in your current directory.
  type: string
  inputBinding:
    prefix: --dir
- id: frag_info
  doc: Name of file containing your fragment info file for this sequencing run. If
    not in same directory as your plot input files, please designate full path to
    the 'fragInfo' file. See documentation for more info (required)
  type: string
  inputBinding:
    prefix: --fragInfo
outputs: []
cwlVersion: v1.1
baseCommand:
- ctseq
- plot
