class: CommandLineTool
id: kreport2mpa.py.cwl
inputs:
- id: in_report_file
  doc: Input kraken report file for converting
  type: File?
  inputBinding:
    prefix: --report-file
- id: in_output
  doc: Output mpa-report file name
  type: File?
  inputBinding:
    prefix: --output
- id: in_display_header
  doc: "Include header [Kraken report filename] in mpa-report\nfile [default: no header]"
  type: boolean?
  inputBinding:
    prefix: --display-header
- id: in_read_count
  doc: Use read count for output [default]
  type: boolean?
  inputBinding:
    prefix: --read_count
- id: in_percentages
  doc: Use percentages for output [instead of reads]
  type: boolean?
  inputBinding:
    prefix: --percentages
- id: in_intermediate_ranks
  doc: Include non-traditional taxonomic ranks in output
  type: boolean?
  inputBinding:
    prefix: --intermediate-ranks
- id: in_no_intermediate_ranks
  doc: "Do not include non-traditional taxonomic ranks in\noutput [default]\n"
  type: boolean?
  inputBinding:
    prefix: --no-intermediate-ranks
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output mpa-report file name
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/krakentools:1.0.1--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- kreport2mpa.py
