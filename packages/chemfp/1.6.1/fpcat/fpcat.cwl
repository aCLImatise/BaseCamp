class: CommandLineTool
id: fpcat.cwl
inputs:
- id: in_in
  doc: "input fingerprint format. One of fps or fps.gz.\n(default guesses from filename\
    \ or is fps)"
  type: File?
  inputBinding:
    prefix: --in
- id: in_merge
  doc: "assume the input fingerprint files are in popcount\norder and do a merge sort"
  type: boolean?
  inputBinding:
    prefix: --merge
- id: in_output
  doc: save the fingerprints to FILENAME (default=stdout)
  type: File?
  inputBinding:
    prefix: --output
- id: in_out
  doc: "output fingerprint format. One of fps or fps.gz.\n(default guesses from output\
    \ filename, or is 'fps')"
  type: File?
  inputBinding:
    prefix: --out
- id: in_reorder
  doc: reorder the output fingerprints by popcount
  type: boolean?
  inputBinding:
    prefix: --reorder
- id: in_preserve_order
  doc: "save the output fingerprints in the same order as the\ninput (default for\
    \ FPS output)"
  type: boolean?
  inputBinding:
    prefix: --preserve-order
- id: in_show_progress
  doc: show progress
  type: boolean?
  inputBinding:
    prefix: --show-progress
- id: in_filename
  doc: 'input fingerprint filenames (default: use stdin)'
  type: File
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: "output fingerprint format. One of fps or fps.gz.\n(default guesses from output\
    \ filename, or is 'fps')"
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/chemfp:1.6.1--py27h3dcb392_0
cwlVersion: v1.1
baseCommand:
- fpcat
