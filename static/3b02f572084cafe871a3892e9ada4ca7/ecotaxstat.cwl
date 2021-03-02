class: CommandLineTool
id: ecotaxstat.cwl
inputs:
- id: in_debug
  doc: Set logging in debug mode
  type: boolean?
  inputBinding:
    prefix: --DEBUG
- id: in_without_progress_bar
  doc: desactivate progress bar
  type: boolean?
  inputBinding:
    prefix: --without-progress-bar
- id: in_eco_pcr_db
  doc: ecoPCR Database name
  type: File?
  inputBinding:
    prefix: --ecopcrdb
- id: in_required
  doc: "required taxid\n"
  type: string?
  inputBinding:
    prefix: --required
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ecotaxstat
