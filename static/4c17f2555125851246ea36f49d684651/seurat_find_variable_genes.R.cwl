class: CommandLineTool
id: seurat_find_variable_genes.R.cwl
inputs:
- id: in_input_object_file
  doc: File name in which a serialized R matrix object may be found.
  type: File?
  inputBinding:
    prefix: --input-object-file
- id: in_input_format
  doc: Either loom, seurat, anndata or singlecellexperiment for the input format to
    read.
  type: string?
  inputBinding:
    prefix: --input-format
- id: in_output_format
  doc: Either loom, seurat, anndata or singlecellexperiment for the output format.
  type: string?
  inputBinding:
    prefix: --output-format
- id: in_selection_method
  doc: "How to choose top variable features. Choose one of: 'vst', 'mvp', disp."
  type: string?
  inputBinding:
    prefix: --selection-method
- id: in_mean_function
  doc: Function to compute x-axis value (average expression). Default is to take the
    mean of the detected (i.e. non-zero) values.
  type: string?
  inputBinding:
    prefix: --mean-function
- id: in_dispersion_function
  doc: Function to compute y-axis value (dispersion). Default is to take the standard
    deviation of all values.
  type: string?
  inputBinding:
    prefix: --dispersion-function
- id: in_x_low_cut_off
  doc: Bottom cutoff on x-axis (mean) for identifying variable genes.
  type: string?
  inputBinding:
    prefix: --x-low-cutoff
- id: in_x_high_cut_off
  doc: Top cutoff on x-axis (mean) for identifying variable genes.
  type: string?
  inputBinding:
    prefix: --x-high-cutoff
- id: in_n_features
  doc: Number of features to return.
  type: long?
  inputBinding:
    prefix: --nfeatures
- id: in_y_low_cut_off
  doc: Bottom cutoff on y-axis (dispersion) for identifying variable genes.
  type: string?
  inputBinding:
    prefix: --y-low-cutoff
- id: in_y_high_cut_off
  doc: Top cutoff on y-axis (dispersion) for identifying variable genes.
  type: string?
  inputBinding:
    prefix: --y-high-cutoff
- id: in_output_object_file
  doc: File name in which to store serialized R object of type 'Seurat'.'
  type: File?
  inputBinding:
    prefix: --output-object-file
- id: in_output_text_file
  doc: File name in which to store variable genes in plain text.
  type: File?
  inputBinding:
    prefix: --output-text-file
- id: in_loess_span
  doc: "SPAN PARAMETER FOR VST\n(vst method) Loess span parameter used when fitting\
    \ the variance-mean relationship. Default: 0.3"
  type: double?
  inputBinding:
    prefix: --loess-span
- id: in_clip_max
  doc: "MAX FOR VST\n(vst method) After standardization values larger than clip.max\
    \ will be set to clip.max; default is 'auto' which sets this value to the square\
    \ root of the number of cells."
  type: long?
  inputBinding:
    prefix: --clip-max
- id: in_num_bin
  doc: "FOR SCALED ANALYSIS\nTotal number of bins to use in the scaled analysis (default\
    \ is 20)."
  type: long?
  inputBinding:
    prefix: --num-bin
- id: in_binning_method
  doc: "METHOD\nSpecifies how the bins should be computed. Available methods are either\
    \ equal_width: each bin is of equal width along the x-axis [default]; or equal_frequency:\
    \ each bin contains an equal number of features (can increase statistical power\
    \ to detect overdispersed features at high expression values, at the cost of reduced\
    \ resolution along the x-axis)"
  type: long?
  inputBinding:
    prefix: --binning-method
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_object_file
  doc: File name in which to store serialized R object of type 'Seurat'.'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_object_file)
- id: out_output_text_file
  doc: File name in which to store variable genes in plain text.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_text_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/seurat-scripts:0.0.9--0
cwlVersion: v1.1
baseCommand:
- seurat-find-variable-genes.R
