class: CommandLineTool
id: lyner_plot.cwl
inputs:
- id: in_outfile
  doc: "-d, --directory DIRECTORY\n--with-annotation\n--annotation-split FLOAT RANGE\n\
    --colorscale [Greys|YlGnBu|Greens|YlOrRed|Bluered|RdBu|Reds|Blues|Picnic|Rainbow|Portland|Jet|Hot|Blackbody|Earth|Electric|Viridis|Cividis]\n\
    -m, --mode LIST\n-c, --mode-config DICT\n-a, --auto-open\n--help             \
    \             Show this message and exit.\n"
  type: File
  inputBinding:
    prefix: --outfile
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- lyner
- plot
