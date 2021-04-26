class: CommandLineTool
id: cooltools_diamond_insulation.cwl
inputs:
- id: in_window_pixels
  doc: set, the window sizes must          be provided in
  type: string?
  inputBinding:
    prefix: --window-pixels
- id: in_output
  doc: "Specify output file name to store the\ninsulation in a tsv format."
  type: File?
  inputBinding:
    prefix: --output
- id: in_ignore_diags
  doc: "The number of diagonals to ignore. By\ndefault, equals the number of diagonals\n\
    ignored during IC balancing."
  type: long?
  inputBinding:
    prefix: --ignore-diags
- id: in_min_frac_valid_pixels
  doc: "The minimal fraction of valid pixels in a\nsliding diamond. Used to mask bins\
    \ during\nboundary detection.  [default: 0.66]"
  type: double?
  inputBinding:
    prefix: --min-frac-valid-pixels
- id: in_min_dist_bad_bin
  doc: "The minimal allowed distance to a bad bin.\nUsed to mask bins during boundary\
    \ detection.\n[default: 0]"
  type: long?
  inputBinding:
    prefix: --min-dist-bad-bin
- id: in_append_raw_scores
  doc: "Append columns with raw scores (sum_counts,\nsum_balanced, n_pixels) to the\
    \ output table."
  type: boolean?
  inputBinding:
    prefix: --append-raw-scores
- id: in_verbose
  doc: Report real-time progress.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_in_path
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_window
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Specify output file name to store the\ninsulation in a tsv format."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cooltools:0.4.0--py39hcbe4a3b_0
cwlVersion: v1.1
baseCommand:
- cooltools
- diamond-insulation
