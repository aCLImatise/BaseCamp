class: CommandLineTool
id: beamspy_summary_results.cwl
inputs:
- id: in_peak_list
  doc: Tab-delimited peaklist
  type: string?
  inputBinding:
    prefix: --peaklist
- id: in_intensity_matrix
  doc: Tab-delimited intensity matrix.
  type: string?
  inputBinding:
    prefix: --intensity-matrix
- id: in_output
  doc: Output file for the summary
  type: File?
  inputBinding:
    prefix: --output
- id: in_pdf
  doc: Output pdf file for the summary plots
  type: File?
  inputBinding:
    prefix: --pdf
- id: in_db
  doc: "Sqlite database that contains the results from the\nprevious steps."
  type: string?
  inputBinding:
    prefix: --db
- id: in_sep
  doc: "Values on each line of the output are separated by\nthis character."
  type: string?
  inputBinding:
    prefix: --sep
- id: in_single_row
  doc: "Concatenate the annotations for each spectral feature\nand represent in a\
    \ single row."
  type: boolean?
  inputBinding:
    prefix: --single-row
- id: in_single_column
  doc: "Concatenate the annotations for each spectral feature\nand keep seperate columns\
    \ for molecular formula,\nadduct, name, etc."
  type: boolean?
  inputBinding:
    prefix: --single-column
- id: in_n_digits_mz
  doc: Digits after the decimal point for m/z values.
  type: double?
  inputBinding:
    prefix: --ndigits-mz
- id: in_convert_rt
  doc: "Covert the retention time to seconds or minutes. An\nadditional column will\
    \ be added.\n"
  type: string?
  inputBinding:
    prefix: --convert-rt
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output file for the summary
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_pdf
  doc: Output pdf file for the summary plots
  type: File?
  outputBinding:
    glob: $(inputs.in_pdf)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/beamspy:1.1.0--py_0
cwlVersion: v1.1
baseCommand:
- beamspy
- summary-results
