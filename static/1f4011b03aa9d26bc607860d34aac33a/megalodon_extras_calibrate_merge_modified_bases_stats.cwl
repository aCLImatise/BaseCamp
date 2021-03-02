class: CommandLineTool
id: megalodon_extras_calibrate_merge_modified_bases_stats.cwl
inputs:
- id: in_out_filename
  doc: "Filename to output calibration statistics values.\nDefault: mod_calibration_statistics.npz"
  type: File?
  inputBinding:
    prefix: --out-filename
- id: in_overwrite
  doc: Overwrite --out-filename if it exists.
  type: File?
  inputBinding:
    prefix: --overwrite
- id: in_mod_calib_stats_fn
  doc: Modified base calibration statistics filenames.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_filename
  doc: "Filename to output calibration statistics values.\nDefault: mod_calibration_statistics.npz"
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
  dockerPull: quay.io/biocontainers/megalodon:2.2.10--py38h0213d0e_0
cwlVersion: v1.1
baseCommand:
- megalodon_extras
- calibrate
- merge_modified_bases_stats
