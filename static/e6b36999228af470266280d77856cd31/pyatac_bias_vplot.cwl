class: CommandLineTool
id: pyatac_bias_vplot.cwl
inputs:
- id: in_bed
  doc: Positions around which to generate VPlot
  type: File
  inputBinding:
    prefix: --bed
- id: in_sizes
  doc: Accepts sizes file from pyatac sizes command
  type: File
  inputBinding:
    prefix: --sizes
- id: in_bg
  doc: Accepts tabix indexed file
  type: File
  inputBinding:
    prefix: --bg
- id: in_fast_a
  doc: Accepts indexed fasta file
  type: File
  inputBinding:
    prefix: --fasta
- id: in_pwm
  doc: "PWM descriptor file. Default is Human.PWM.txt included\nin package"
  type: long
  inputBinding:
    prefix: --pwm
- id: in_out
  doc: --cores int         Number of cores to use
  type: long
  inputBinding:
    prefix: --out
- id: in_lower
  doc: "lower limit on insert size\n--upper int         upper limit on insert size\n\
    --flank int         how many bases on each side of site (or center of site)\n\
    to include\n--scale\n--weight int        column in which weight information is\
    \ included\n--strand int        column in which strand information is included"
  type: long
  inputBinding:
    prefix: --lower
- id: in_no_plot
  doc: Don't plot output
  type: boolean
  inputBinding:
    prefix: --no_plot
- id: in_plot_extra
  doc: Make some extra plots
  type: boolean
  inputBinding:
    prefix: --plot_extra
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- pyatac
- bias_vplot
