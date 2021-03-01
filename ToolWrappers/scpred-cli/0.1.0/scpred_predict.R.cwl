class: CommandLineTool
id: scpred_predict.R.cwl
inputs:
- id: in_input_object
  doc: Path to the input object of scPred or seurat class in .rds format
  type: File?
  inputBinding:
    prefix: --input-object
- id: in_pred_data
  doc: Path to the input prediction matrix in .rds format
  type: File?
  inputBinding:
    prefix: --pred-data
- id: in_normalise_data
  doc: 'Should the predicted expression data be normalised? Default: False'
  type: string?
  inputBinding:
    prefix: --normalise-data
- id: in_normalisation_method
  doc: "If --normalise-data specified, what normalisation method to use? Default:\
    \ LogNormalize\nNB: normalisation method must be identical to that used for reference\
    \ data"
  type: string?
  inputBinding:
    prefix: --normalisation-method
- id: in_scale_factor
  doc: "If --normalise-data specified, what scale factor should be applied?\nNote:\
    \ for CPM normalisation, select 1e6"
  type: double?
  inputBinding:
    prefix: --scale-factor
- id: in_threshold_level
  doc: Classification threshold value
  type: string?
  inputBinding:
    prefix: --threshold-level
- id: in_max_iter_harmony
  doc: Maximum number of rounds to run Harmony. One round of Harmony involves one
    clustering and one correction step
  type: long?
  inputBinding:
    prefix: --max-iter-harmony
- id: in_recompute_alignment
  doc: 'Recompute alignment? Useful if scPredict() has already been run. Default:
    TRUE'
  type: string?
  inputBinding:
    prefix: --recompute-alignment
- id: in_reference_scaling
  doc: 'Scale new dataset based on means and stdevs from reference dataset before
    alignment. Default: TRUE'
  type: string?
  inputBinding:
    prefix: --reference-scaling
- id: in_random_seed
  doc: Random number generator seed
  type: long?
  inputBinding:
    prefix: --random-seed
- id: in_output_path
  doc: Output path for Seurat object holding predicted values
  type: File?
  inputBinding:
    prefix: --output-path
- id: in_plot_path
  doc: Output path for prediction probabilities histograms in .png format
  type: File?
  inputBinding:
    prefix: --plot-path
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_path
  doc: Output path for Seurat object holding predicted values
  type: File?
  outputBinding:
    glob: $(inputs.in_output_path)
- id: out_plot_path
  doc: Output path for prediction probabilities histograms in .png format
  type: File?
  outputBinding:
    glob: $(inputs.in_plot_path)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/scpred-cli:0.1.0--1
cwlVersion: v1.1
baseCommand:
- scpred_predict.R
