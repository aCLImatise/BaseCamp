class: CommandLineTool
id: mzrt_match.py.cwl
inputs:
- id: in_an_no_one
  doc: Out path for first file
  type: File?
  inputBinding:
    prefix: --anno1
- id: in_an_no_two
  doc: Out path for second file
  type: File?
  inputBinding:
    prefix: --anno2
- id: in_uniqid_one
  doc: Name of the column in file1 that contains the uniqID
  type: long?
  inputBinding:
    prefix: --uniqID1
- id: in_mz_i_done
  doc: Name of the column in file1 that contains MZ
  type: long?
  inputBinding:
    prefix: --mzID1
- id: in_rti_done
  doc: Name of the column in file1 that contains RT
  type: long?
  inputBinding:
    prefix: --rtID1
- id: in_uniqid_two
  doc: Name of the column in file2 that contains the uniqID
  type: long?
  inputBinding:
    prefix: --uniqID2
- id: in_mz_id_two
  doc: Name of the column in file2 that contains MZ
  type: long?
  inputBinding:
    prefix: --mzID2
- id: in_rt_id_two
  doc: Name of the column in file2 that contains RT
  type: long?
  inputBinding:
    prefix: --rtID2
- id: in_all
  doc: Out path for All peak combinations File
  type: File?
  inputBinding:
    prefix: --all
- id: in_matched
  doc: Out path for Matched peaks combinations File
  type: File?
  inputBinding:
    prefix: --matched
- id: in_unmatched_one
  doc: Out path for Unmatched peaks in file 1
  type: File?
  inputBinding:
    prefix: --unmatched1
- id: in_unmatched_two
  doc: Out path for Unmatched peaks in file 2
  type: File?
  inputBinding:
    prefix: --unmatched2
- id: in_summary
  doc: Out path for Summary File
  type: File?
  inputBinding:
    prefix: --summary
- id: in_figure
  doc: "Out path for Matched vs Unmatched Combinations Venn\nDiagram File"
  type: File?
  inputBinding:
    prefix: --figure
- id: in_mz_cut
  doc: Window value for MZ matching [default 0.005]
  type: double?
  inputBinding:
    prefix: --mzcut
- id: in_rt_cut
  doc: Window value for RT matching [default 0.15]
  type: double?
  inputBinding:
    prefix: --rtcut
- id: in_name_one
  doc: Short name for File 1 [default F1]
  type: long?
  inputBinding:
    prefix: --name1
- id: in_name_two
  doc: "Short name for File 2 [default F2]\n"
  type: long?
  inputBinding:
    prefix: --name2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_an_no_one
  doc: Out path for first file
  type: File?
  outputBinding:
    glob: $(inputs.in_an_no_one)
- id: out_an_no_two
  doc: Out path for second file
  type: File?
  outputBinding:
    glob: $(inputs.in_an_no_two)
- id: out_all
  doc: Out path for All peak combinations File
  type: File?
  outputBinding:
    glob: $(inputs.in_all)
- id: out_matched
  doc: Out path for Matched peaks combinations File
  type: File?
  outputBinding:
    glob: $(inputs.in_matched)
- id: out_unmatched_one
  doc: Out path for Unmatched peaks in file 1
  type: File?
  outputBinding:
    glob: $(inputs.in_unmatched_one)
- id: out_unmatched_two
  doc: Out path for Unmatched peaks in file 2
  type: File?
  outputBinding:
    glob: $(inputs.in_unmatched_two)
- id: out_summary
  doc: Out path for Summary File
  type: File?
  outputBinding:
    glob: $(inputs.in_summary)
- id: out_figure
  doc: "Out path for Matched vs Unmatched Combinations Venn\nDiagram File"
  type: File?
  outputBinding:
    glob: $(inputs.in_figure)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/secimtools:21.3.4.2--py_0
cwlVersion: v1.1
baseCommand:
- mzrt_match.py
