class: CommandLineTool
id: cpgplot.cwl
inputs:
- id: window
  doc: integer    [100] The percentage CG content and the Observed frequency of CG
    is calculated within a window whose size is set by this parameter. The window
    is moved down the sequence and these statistics are calculated at each position
    that the window is moved to. (Integer 1 or more)
  type: boolean
  inputBinding:
    prefix: -window
- id: min_len
  doc: integer    [200] This sets the minimum length that a CpG island has to be before
    it is reported. (Integer 1 or more)
  type: boolean
  inputBinding:
    prefix: -minlen
- id: min_oe
  doc: float      [0.6] This sets the minimum average observed to expected ratio of
    C plus G to CpG in a set of 10 windows that are required before a CpG island is
    reported. (Number from 0.000 to 10.000)
  type: boolean
  inputBinding:
    prefix: -minoe
- id: min_pc
  doc: float      [50.] This sets the minimum average percentage of G plus C a set
    of 10 windows that are required before a CpG island is reported. (Number from
    0.000 to 100.000)
  type: boolean
  inputBinding:
    prefix: -minpc
outputs: []
cwlVersion: v1.1
baseCommand:
- cpgplot
