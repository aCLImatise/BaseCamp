class: CommandLineTool
id: fpcat.cwl
inputs:
- id: filename
  doc: 'input fingerprint filenames (default: use stdin)'
  type: File
  inputBinding:
    position: 0
- id: in
  doc: input fingerprint format. One of fps or fps.gz. (default guesses from filename
    or is fps)
  type: string
  inputBinding:
    prefix: --in
- id: merge
  doc: assume the input fingerprint files are in popcount order and do a merge sort
  type: boolean
  inputBinding:
    prefix: --merge
- id: output
  doc: save the fingerprints to FILENAME (default=stdout)
  type: File
  inputBinding:
    prefix: --output
- id: out
  doc: output fingerprint format. One of fps or fps.gz. (default guesses from output
    filename, or is 'fps')
  type: string
  inputBinding:
    prefix: --out
- id: reorder
  doc: reorder the output fingerprints by popcount
  type: boolean
  inputBinding:
    prefix: --reorder
- id: preserve_order
  doc: save the output fingerprints in the same order as the input (default for FPS
    output)
  type: boolean
  inputBinding:
    prefix: --preserve-order
- id: show_progress
  doc: show progress
  type: boolean
  inputBinding:
    prefix: --show-progress
outputs: []
cwlVersion: v1.1
baseCommand:
- fpcat
