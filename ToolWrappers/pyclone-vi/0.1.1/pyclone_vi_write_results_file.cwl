class: CommandLineTool
id: pyclone_vi_write_results_file.cwl
inputs:
- id: in_in_file
  doc: "Path to HDF5 format file produced by the `fit` command.\n[required]"
  type: File?
  inputBinding:
    prefix: --in-file
- id: in_out_file
  doc: "Path to where results will be written in tsv format.\n[required]"
  type: File?
  inputBinding:
    prefix: --out-file
- id: in_compress
  doc: If set the output file will be compressed using gzip.
  type: File?
  inputBinding:
    prefix: --compress
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_file
  doc: "Path to where results will be written in tsv format.\n[required]"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_file)
- id: out_compress
  doc: If set the output file will be compressed using gzip.
  type: File?
  outputBinding:
    glob: $(inputs.in_compress)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pyclone-vi:0.1.1--pyh7b7c402_0
cwlVersion: v1.1
baseCommand:
- pyclone-vi
- write-results-file
