class: CommandLineTool
id: megalodon_extras_calibrate_merge_modified_bases.cwl
inputs:
- id: in_out_filename
  doc: "Filename to output calibration values. Default:\nmegalodon_mod_calibration.npz"
  type: File?
  inputBinding:
    prefix: --out-filename
- id: in_overwrite
  doc: Overwrite --out-filename if it exists.
  type: File?
  inputBinding:
    prefix: --overwrite
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: "Filename to output calibration values. Default:\nmegalodon_mod_calibration.npz"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_filename)
- id: out_overwrite
  doc: Overwrite --out-filename if it exists.
  type: File?
  outputBinding:
    glob: $(inputs.in_overwrite)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/megalodon:2.3.1--py38h4a8c8d9_0
cwlVersion: v1.1
baseCommand:
- megalodon_extras
- calibrate
- merge_modified_bases
