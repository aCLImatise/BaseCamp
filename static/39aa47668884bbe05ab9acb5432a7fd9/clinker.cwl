class: CommandLineTool
id: clinker.cwl
inputs:
- id: in_no_align
  doc: Do not align clusters
  type: boolean?
  inputBinding:
    prefix: --no_align
- id: in_identity
  doc: Minimum alignment sequence identity
  type: string?
  inputBinding:
    prefix: --identity
- id: in_jobs
  doc: "Number of alignments to run in parallel (0 to use the\nnumber of CPUs)"
  type: long?
  inputBinding:
    prefix: --jobs
- id: in_session
  doc: Path to clinker session
  type: File?
  inputBinding:
    prefix: --session
- id: in_json_indent
  doc: Number of spaces to indent JSON
  type: long?
  inputBinding:
    prefix: --json_indent
- id: in_force
  doc: Overwrite previous output file
  type: File?
  inputBinding:
    prefix: --force
- id: in_output
  doc: Save alignments to file
  type: File?
  inputBinding:
    prefix: --output
- id: in_plot_cluster_alignments
  doc: "[PLOT], --plot [PLOT]\nPlot cluster alignments using clustermap.js. If a path\n\
    is given, clinker will generate a portable HTML file\nat that path. Otherwise,\
    \ the plot will be served\ndynamically using Python's HTTP server."
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_delimiter
  doc: Character to delimit output by
  type: string?
  inputBinding:
    prefix: --delimiter
- id: in_decimals
  doc: Number of decimal places in output
  type: double?
  inputBinding:
    prefix: --decimals
- id: in_hide_link_headers
  doc: Hide alignment column headers
  type: boolean?
  inputBinding:
    prefix: --hide_link_headers
- id: in_hide_aln_headers
  doc: Hide alignment cluster name headers
  type: boolean?
  inputBinding:
    prefix: --hide_aln_headers
- id: in_use_file_order
  doc: Display clusters in order of input files
  type: boolean?
  inputBinding:
    prefix: --use_file_order
- id: in_files
  doc: Gene cluster GenBank files
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_force
  doc: Overwrite previous output file
  type: File?
  outputBinding:
    glob: $(inputs.in_force)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/clinker-py:0.0.12--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- clinker
