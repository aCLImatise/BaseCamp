class: CommandLineTool
id: fitscheck.cwl
inputs:
- id: in_choose_fits_mode
  doc: "[standard | remove | none], --checksum=[standard | remove | none]\nChoose\
    \ FITS checksum mode or none.  Defaults standard."
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_write
  doc: Write out file checksums and/or FITS compliance fixes.
  type: File?
  inputBinding:
    prefix: --write
- id: in_force
  doc: Do file update even if original checksum was bad.
  type: boolean?
  inputBinding:
    prefix: --force
- id: in_compliance
  doc: Do FITS compliance checking; fix if possible.
  type: boolean?
  inputBinding:
    prefix: --compliance
- id: in_ignore_missing
  doc: Ignore missing checksums.
  type: boolean?
  inputBinding:
    prefix: --ignore-missing
- id: in_verbose
  doc: Generate extra output.
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_write
  doc: Write out file checksums and/or FITS compliance fixes.
  type: File?
  outputBinding:
    glob: $(inputs.in_write)
hints: []
cwlVersion: v1.1
baseCommand:
- fitscheck
