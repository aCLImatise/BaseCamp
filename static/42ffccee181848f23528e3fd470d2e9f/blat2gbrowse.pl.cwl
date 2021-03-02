class: CommandLineTool
id: blat2gbrowse.pl.cwl
inputs:
- id: in_old_format
  doc: output format for old GBrowse (before 2.0)
  type: boolean?
  inputBinding:
    prefix: --oldformat
- id: in_est_names
  doc: output file with the names of the ESTs
  type: File?
  inputBinding:
    prefix: --estnames
- id: in_source
  doc: identifyier in the source column
  type: string?
  inputBinding:
    prefix: --source
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_est_names
  doc: output file with the names of the ESTs
  type: File?
  outputBinding:
    glob: $(inputs.in_est_names)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0
cwlVersion: v1.1
baseCommand:
- blat2gbrowse.pl
