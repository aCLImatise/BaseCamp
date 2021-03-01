class: CommandLineTool
id: _tcode.cwl
inputs:
- id: in_window
  doc: "integer    [200] This is the number of nucleotide bases\nover which the TESTCODE\
    \ statistic will be\nperformed each time. The window will then\nslide along the\
    \ sequence, covering the same\nnumber of bases each time. (Integer 200 or\nmore)"
  type: boolean?
  inputBinding:
    prefix: -window
- id: in_data_file
  doc: "datafile   [Etcode.dat] The default data file is\nEtcode.dat and contains\
    \ coding probabilities\nfor each base. The probabilities are for\nboth positional\
    \ and compositional\ninformation."
  type: boolean?
  inputBinding:
    prefix: -datafile
- id: in_step
  doc: "integer    [3] The selected window will, by default,\nslide along the nucleotide\
    \ sequence by three\nbases at a time, retaining the frame\n(although the algorithm\
    \ is not frame\nsensitive). This may be altered to increase\nor decrease the increment\
    \ of the slide.\n(Integer 1 or more)"
  type: boolean?
  inputBinding:
    prefix: -step
- id: in_plot
  doc: "toggle     [N] On selection a graph of the sequence (X\naxis) plotted against\
    \ the coding score (Y\naxis) will be displayed. Sequence above the\ngreen line\
    \ is coding, that below the red\nline is non-coding."
  type: boolean?
  inputBinding:
    prefix: -plot
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- _tcode
