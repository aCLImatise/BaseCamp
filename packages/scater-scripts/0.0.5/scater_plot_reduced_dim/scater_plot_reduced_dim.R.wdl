version 1.0

task ScaterplotreduceddimR {
  input {
    File? input_object_file
    Int? use_dim_red
    Int? n_components
    String? percent_var
    String? colour_by
    String? shape_by
    Int? size_by
    Int? by_exprs_values
    String? by_show_single
    String? png_width
    File? png_height
    File? output_image_file
  }
  command <<<
    scater_plot_reduced_dim_R \
      ~{if defined(input_object_file) then ("--input-object-file " +  '"' + input_object_file + '"') else ""} \
      ~{if defined(use_dim_red) then ("--use-dimred " +  '"' + use_dim_red + '"') else ""} \
      ~{if defined(n_components) then ("--ncomponents " +  '"' + n_components + '"') else ""} \
      ~{if defined(percent_var) then ("--percent-var " +  '"' + percent_var + '"') else ""} \
      ~{if defined(colour_by) then ("--colour-by " +  '"' + colour_by + '"') else ""} \
      ~{if defined(shape_by) then ("--shape-by " +  '"' + shape_by + '"') else ""} \
      ~{if defined(size_by) then ("--size-by " +  '"' + size_by + '"') else ""} \
      ~{if defined(by_exprs_values) then ("--by_exprs-values " +  '"' + by_exprs_values + '"') else ""} \
      ~{if defined(by_show_single) then ("--by_show_single " +  '"' + by_show_single + '"') else ""} \
      ~{if defined(png_width) then ("--png-width " +  '"' + png_width + '"') else ""} \
      ~{if defined(png_height) then ("--png-height " +  '"' + png_height + '"') else ""} \
      ~{if defined(output_image_file) then ("--output-image-file " +  '"' + output_image_file + '"') else ""}
  >>>
  parameter_meta {
    input_object_file: "singleCellExperiment object containing expression values and experimental information. Must have been appropriately prepared."
    use_dim_red: "A string or integer scalar indicating the reduced dimension result in reducedDims(object) to plot."
    n_components: "A numeric scalar indicating the number of dimensions to plot, starting from the first dimension. Alternatively, a comma-separated specifying the dimensions to be plotted."
    percent_var: "A comma-separated string giving the proportion of variance in expression explained by each reduced dimension. Only expected to be used in PCA settings, e.g., in the plotPCA function."
    colour_by: "Specification of a column metadata field or a feature to colour by."
    shape_by: "Specification of a column metadata field or a feature to shape by."
    size_by: "Specification of a column metadata field or a feature to shape by."
    by_exprs_values: "A string or integer scalar specifying which assay to obtain expression values from, for use in point aesthetics."
    by_show_single: "Logical scalar specifying whether single-level factors should be used for point aesthetics."
    png_width: "Width of png (px)."
    png_height: "Height of png file (px)."
    output_image_file: "File name in which to save the PCA image"
  }
  output {
    File out_stdout = stdout()
    File out_output_image_file = "${in_output_image_file}"
  }
}