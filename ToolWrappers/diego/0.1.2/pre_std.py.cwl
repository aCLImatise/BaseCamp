class: CommandLineTool
id: pre_std.py.cwl
inputs:
- id: in_list
  doc: sampleName tab-delimiter path/to/fileName
  type: File?
  inputBinding:
    prefix: --list
- id: in_an_no
  doc: "specifies the path to the annotation (bed 6 file of\ngenebounderies with info\n\
    protein_coding;ENSG00000237683.5;AL627309.1 in column\nfour.)"
  type: File?
  inputBinding:
    prefix: --anno
- id: in_outdir
  doc: "specifies the path to ouput directory (temp files are\nalso created in this\
    \ directory, they are removed by rm\n*.rm) (default is '.')\n"
  type: File?
  inputBinding:
    prefix: --outdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pre_std.py
