class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/ctseq_plot_multiple.cwl
inputs:
- id: dir
  doc: Path to directory where you want your plots to be created. If no path is given,
    ctseq will create the plots in your current working directory. Remember to include
    a file ending in '_directories.txt' containing the paths of the directories containing
    the data you want to plot
  type: string
  inputBinding:
    prefix: --dir
- id: frag_info
  doc: Name of file containing your fragment info file for these combined plots. If
    not in same directory as your current working directory, please designate full
    path to the 'fragInfo' file. See documentation for more info (required)
  type: string
  inputBinding:
    prefix: --fragInfo
- id: name
  doc: Desired name to be used as the prefix for the file names of these plots (required)
  type: string
  inputBinding:
    prefix: --name
outputs: []
cwlVersion: v1.1
baseCommand:
- ctseq
- plot_multiple
