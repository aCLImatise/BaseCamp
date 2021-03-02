class: CommandLineTool
id: cnvkit.py_export_seg.cwl
inputs:
- id: in_enumerate_chrom_s
  doc: Replace chromosome names with sequential integer IDs.
  type: boolean?
  inputBinding:
    prefix: --enumerate-chroms
- id: in_output
  doc: "Output file name.\n"
  type: File?
  inputBinding:
    prefix: --output
- id: in_filenames
  doc: "Segmented copy ratio data file(s) (*.cns), the output\nof the 'segment' sub-command."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output file name.\n"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- cnvkit.py
- export
- seg
