class: CommandLineTool
id: beamspy_group_features.cwl
inputs:
- id: in_peak_list
  doc: Tab-delimited peaklist.
  type: string?
  inputBinding:
    prefix: --peaklist
- id: in_intensity_matrix
  doc: Tab-delimited intensity matrix.
  type: string?
  inputBinding:
    prefix: --intensity-matrix
- id: in_db
  doc: Sqlite database to write results.
  type: string?
  inputBinding:
    prefix: --db
- id: in_max_rt_diff
  doc: "Maximum difference in retention time between two\npeaks."
  type: long?
  inputBinding:
    prefix: --max-rt-diff
- id: in_method
  doc: Method to apply for grouping features.
  type: string?
  inputBinding:
    prefix: --method
- id: in_coeff_threshold
  doc: Threshold for correlation coefficient.
  type: string?
  inputBinding:
    prefix: --coeff-threshold
- id: in_p_value_threshold
  doc: Threshold for p-value.
  type: string?
  inputBinding:
    prefix: --pvalue-threshold
- id: in_gml_file
  doc: Write graph to GraphML format.
  type: File?
  inputBinding:
    prefix: --gml-file
- id: in_n_cpus
  doc: "Number of central processing units (CPUs).\n"
  type: long?
  inputBinding:
    prefix: --ncpus
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/beamspy:1.1.0--py_0
cwlVersion: v1.1
baseCommand:
- beamspy
- group-features
