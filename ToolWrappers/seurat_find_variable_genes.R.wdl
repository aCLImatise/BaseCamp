version 1.0

task SeuratfindvariablegenesR {
  input {
    File? input_object_file
    String? input_format
    String? output_format
    String? selection_method
    String? mean_function
    String? dispersion_function
    String? x_low_cut_off
    String? x_high_cut_off
    Int? n_features
    String? y_low_cut_off
    String? y_high_cut_off
    File? output_object_file
    File? output_text_file
    Float? loess_span
    Int? clip_max
    Int? num_bin
    Int? binning_method
  }
  command <<<
    seurat_find_variable_genes_R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(input_format) then ("--input-format " +  '"' + input_format + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(selection_method) then ("--selection-method " +  '"' + selection_method + '"') else ""} \
      ~{if defined(mean_function) then ("--mean-function " +  '"' + mean_function + '"') else ""} \
      ~{if defined(dispersion_function) then ("--dispersion-function " +  '"' + dispersion_function + '"') else ""} \
      ~{if defined(x_low_cut_off) then ("--x-low-cutoff " +  '"' + x_low_cut_off + '"') else ""} \
      ~{if defined(x_high_cut_off) then ("--x-high-cutoff " +  '"' + x_high_cut_off + '"') else ""} \
      ~{if defined(n_features) then ("--nfeatures " +  '"' + n_features + '"') else ""} \
      ~{if defined(y_low_cut_off) then ("--y-low-cutoff " +  '"' + y_low_cut_off + '"') else ""} \
      ~{if defined(y_high_cut_off) then ("--y-high-cutoff " +  '"' + y_high_cut_off + '"') else ""} \
      ~{if defined(output_object_file) then ("--output-object-file " +  '"' + output_object_file + '"') else ""} \
      ~{if defined(output_text_file) then ("--output-text-file " +  '"' + output_text_file + '"') else ""} \
      ~{if defined(loess_span) then ("--loess-span " +  '"' + loess_span + '"') else ""} \
      ~{if defined(clip_max) then ("--clip-max " +  '"' + clip_max + '"') else ""} \
      ~{if defined(num_bin) then ("--num-bin " +  '"' + num_bin + '"') else ""} \
      ~{if defined(binning_method) then ("--binning-method " +  '"' + binning_method + '"') else ""}
  >>>
  parameter_meta {
    input_object_file: "File name in which a serialized R matrix object may be found."
    input_format: "Either loom, seurat, anndata or singlecellexperiment for the input format to read."
    output_format: "Either loom, seurat, anndata or singlecellexperiment for the output format."
    selection_method: "How to choose top variable features. Choose one of: 'vst', 'mvp', disp."
    mean_function: "Function to compute x-axis value (average expression). Default is to take the mean of the detected (i.e. non-zero) values."
    dispersion_function: "Function to compute y-axis value (dispersion). Default is to take the standard deviation of all values."
    x_low_cut_off: "Bottom cutoff on x-axis (mean) for identifying variable genes."
    x_high_cut_off: "Top cutoff on x-axis (mean) for identifying variable genes."
    n_features: "Number of features to return."
    y_low_cut_off: "Bottom cutoff on y-axis (dispersion) for identifying variable genes."
    y_high_cut_off: "Top cutoff on y-axis (dispersion) for identifying variable genes."
    output_object_file: "File name in which to store serialized R object of type 'Seurat'.'"
    output_text_file: "File name in which to store variable genes in plain text."
    loess_span: "SPAN PARAMETER FOR VST\\n(vst method) Loess span parameter used when fitting the variance-mean relationship. Default: 0.3"
    clip_max: "MAX FOR VST\\n(vst method) After standardization values larger than clip.max will be set to clip.max; default is 'auto' which sets this value to the square root of the number of cells."
    num_bin: "FOR SCALED ANALYSIS\\nTotal number of bins to use in the scaled analysis (default is 20)."
    binning_method: "METHOD\\nSpecifies how the bins should be computed. Available methods are either equal_width: each bin is of equal width along the x-axis [default]; or equal_frequency: each bin contains an equal number of features (can increase statistical power to detect overdispersed features at high expression values, at the cost of reduced resolution along the x-axis)"
  }
  output {
    File out_stdout = stdout()
    File out_output_object_file = "${in_output_object_file}"
    File out_output_text_file = "${in_output_text_file}"
  }
}