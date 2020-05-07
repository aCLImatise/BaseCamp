class: CommandLineTool
id: mzrt_match.py.cwl
inputs:
- id: anno1
  doc: Out path for first file
  type: string
  inputBinding:
    prefix: --anno1
- id: anno2
  doc: Out path for second file
  type: string
  inputBinding:
    prefix: --anno2
- id: uniqid1
  doc: Name of the column in file1 that contains the uniqID
  type: string
  inputBinding:
    prefix: --uniqID1
- id: mzid1
  doc: Name of the column in file1 that contains MZ
  type: string
  inputBinding:
    prefix: --mzID1
- id: rtid1
  doc: Name of the column in file1 that contains RT
  type: string
  inputBinding:
    prefix: --rtID1
- id: uniqid2
  doc: Name of the column in file2 that contains the uniqID
  type: string
  inputBinding:
    prefix: --uniqID2
- id: mzid2
  doc: Name of the column in file2 that contains MZ
  type: string
  inputBinding:
    prefix: --mzID2
- id: rtid2
  doc: Name of the column in file2 that contains RT
  type: string
  inputBinding:
    prefix: --rtID2
- id: all
  doc: Out path for All peak combinations File
  type: string
  inputBinding:
    prefix: --all
- id: matched
  doc: Out path for Matched peaks combinations File
  type: string
  inputBinding:
    prefix: --matched
- id: unmatched_1
  doc: Out path for Unmatched peaks in file 1
  type: string
  inputBinding:
    prefix: --unmatched1
- id: unmatched_2
  doc: Out path for Unmatched peaks in file 2
  type: string
  inputBinding:
    prefix: --unmatched2
- id: summary
  doc: Out path for Summary File
  type: string
  inputBinding:
    prefix: --summary
- id: figure
  doc: Out path for Matched vs Unmatched Combinations Venn Diagram File
  type: string
  inputBinding:
    prefix: --figure
- id: mz_cut
  doc: Window value for MZ matching [default 0.005]
  type: string
  inputBinding:
    prefix: --mzcut
- id: rt_cut
  doc: Window value for RT matching [default 0.15]
  type: string
  inputBinding:
    prefix: --rtcut
- id: name_1
  doc: Short name for File 1 [default F1]
  type: string
  inputBinding:
    prefix: --name1
- id: name_2
  doc: Short name for File 2 [default F2]
  type: string
  inputBinding:
    prefix: --name2
outputs: []
cwlVersion: v1.1
baseCommand:
- mzrt_match.py
