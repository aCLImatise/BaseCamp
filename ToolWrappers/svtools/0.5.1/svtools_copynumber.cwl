class: CommandLineTool
id: svtools_copynumber.cwl
inputs:
- id: in_coordinates
  doc: "file containing coordinate for which to retrieve\ncopynumber (required)"
  type: File?
  inputBinding:
    prefix: --coordinates
- id: in_root
  doc: CNVnator .root histogram file (required)
  type: File?
  inputBinding:
    prefix: --root
- id: in_window
  doc: CNVnator window size (required)
  type: long?
  inputBinding:
    prefix: --window
- id: in_sample
  doc: sample to annotate (required)
  type: string?
  inputBinding:
    prefix: --sample
- id: in_cnv_nator
  doc: "path to cnvnator binary for the cnvnator used by\nspeedseq (required)"
  type: File?
  inputBinding:
    prefix: --cnvnator
- id: in_input
  doc: VCF input
  type: string?
  inputBinding:
    prefix: --input
- id: in_output
  doc: 'output VCF to write (default: stdout)'
  type: File?
  inputBinding:
    prefix: --output
- id: in_tempdir
  doc: Directory for temp file downloads
  type: File?
  inputBinding:
    prefix: --tempdir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- svtools
- copynumber
