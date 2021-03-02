class: CommandLineTool
id: compute_full_matrix.py.cwl
inputs:
- id: in_in
  doc: "A list of mProphet output files containing all\npeakgroups (use quotes around\
    \ the filenames)"
  type: string[]
  inputBinding:
    prefix: --in
- id: in_out_matrix
  doc: "Matrix containing one peak group per (supports .csv,\n.tsv or .xls)"
  type: string?
  inputBinding:
    prefix: --out_matrix
- id: in_frac_selected
  doc: "Do not write peakgroup if selected in less than this\nfraction of runs (range\
    \ 0 to 1)"
  type: long?
  inputBinding:
    prefix: --frac_selected
- id: in_file_format
  doc: "Which input file format is used (openswath or\npeakview)"
  type: File?
  inputBinding:
    prefix: --file_format
- id: in_output_method
  doc: "Which columns are written besides Intensity (none, RT,\nscore or full)"
  type: string?
  inputBinding:
    prefix: --output_method
- id: in_read_method
  doc: Read full or minimal transition groups (minimal,full)
  type: string?
  inputBinding:
    prefix: --readmethod
- id: in_aligner_m_score_threshold
  doc: "cutoff used at alignment, for coloring realigned\nvalues in blue\n"
  type: string?
  inputBinding:
    prefix: --aligner_mscore_threshold
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/msproteomicstools:0.11.0--py27ha968a36_1
cwlVersion: v1.1
baseCommand:
- compute_full_matrix.py
