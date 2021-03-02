class: CommandLineTool
id: _cpgplot.cwl
inputs:
- id: in_window
  doc: "integer    [100] The percentage CG content and the\nObserved frequency of\
    \ CG is calculated\nwithin a window whose size is set by this\nparameter. The\
    \ window is moved down the\nsequence and these statistics are calculated\nat each\
    \ position that the window is moved\nto. (Integer 1 or more)"
  type: boolean?
  inputBinding:
    prefix: -window
- id: in_min_len
  doc: "integer    [200] This sets the minimum length that a\nCpG island has to be\
    \ before it is reported.\n(Integer 1 or more)"
  type: boolean?
  inputBinding:
    prefix: -minlen
- id: in_min_oe
  doc: "float      [0.6] This sets the minimum average observed\nto expected ratio\
    \ of C plus G to CpG in a\nset of 10 windows that are required before a\nCpG island\
    \ is reported. (Number from 0.000\nto 10.000)"
  type: boolean?
  inputBinding:
    prefix: -minoe
- id: in_min_pc
  doc: "float      [50.] This sets the minimum average\npercentage of G plus C a set\
    \ of 10 windows\nthat are required before a CpG island is\nreported. (Number from\
    \ 0.000 to 100.000)"
  type: boolean?
  inputBinding:
    prefix: -minpc
- id: in_displayed_dot
  doc: 'General qualifiers:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- _cpgplot
