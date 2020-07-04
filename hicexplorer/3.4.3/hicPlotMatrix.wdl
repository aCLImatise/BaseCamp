version 1.0

task HicPlotMatrix {
  input {
    String? matrix
    String? out_filename
    String? title
    String? score_name
    Boolean? per_chromosome
    Boolean? clear_masked_bins
    Array[String] chromosome_order
    String? region
    String? region_two
    Boolean? logo_nep
    Boolean? log
    String? colormap
    String? vmin
    String? vmax
    String? dpi
    Array[String] bigwig
    Boolean? bigwig_additional_vertical_axis
    String? vmin_bigwig
    String? vmax_bigwig
    Boolean? flip_bigwig_sign
    String? scale_factor_bigwig
    String? font_size
    String? rotation_x
    String? rotation_y
    String? loops
  }
  command <<<
    hicPlotMatrix \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(score_name) then ("--scoreName " +  '"' + score_name + '"') else ""} \
      ~{true="--perChromosome" false="" per_chromosome} \
      ~{true="--clearMaskedBins" false="" clear_masked_bins} \
      ~{if defined(chromosome_order) then ("--chromosomeOrder " +  '"' + chromosome_order + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if defined(region_two) then ("--region2 " +  '"' + region_two + '"') else ""} \
      ~{true="--log1p" false="" logo_nep} \
      ~{true="--log" false="" log} \
      ~{if defined(colormap) then ("--colorMap " +  '"' + colormap + '"') else ""} \
      ~{if defined(vmin) then ("--vMin " +  '"' + vmin + '"') else ""} \
      ~{if defined(vmax) then ("--vMax " +  '"' + vmax + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(bigwig) then ("--bigwig " +  '"' + bigwig + '"') else ""} \
      ~{true="--bigwigAdditionalVerticalAxis" false="" bigwig_additional_vertical_axis} \
      ~{if defined(vmin_bigwig) then ("--vMinBigwig " +  '"' + vmin_bigwig + '"') else ""} \
      ~{if defined(vmax_bigwig) then ("--vMaxBigwig " +  '"' + vmax_bigwig + '"') else ""} \
      ~{true="--flipBigwigSign" false="" flip_bigwig_sign} \
      ~{if defined(scale_factor_bigwig) then ("--scaleFactorBigwig " +  '"' + scale_factor_bigwig + '"') else ""} \
      ~{if defined(font_size) then ("--fontsize " +  '"' + font_size + '"') else ""} \
      ~{if defined(rotation_x) then ("--rotationX " +  '"' + rotation_x + '"') else ""} \
      ~{if defined(rotation_y) then ("--rotationY " +  '"' + rotation_y + '"') else ""} \
      ~{if defined(loops) then ("--loops " +  '"' + loops + '"') else ""}
  >>>
  parameter_meta {
    matrix: "Path of the Hi-C matrix to plot."
    out_filename: "File name to save the image."
    title: "Plot title."
    score_name: "Score name label for the heatmap legend."
    per_chromosome: "Instead of plotting the whole matrix, each chromosome is plotted next to the other. This parameter is not compatible with --region."
    clear_masked_bins: "If set, masked bins are removed from the matrix and the nearest bins are extended to cover the empty space instead of plotting black lines."
    chromosome_order: "Chromosomes and order in which the chromosomes should be plotted. This option overrides --region and --region2."
    region: "Plot only this region. The format is chr:start-end The plotted region contains the main diagonal and is symmetric unless --region2 is given."
    region_two: "If given, then only the region defined by --region and --region2 is given. The format is the same as --region1."
    logo_nep: "Plot the log1p of the matrix values."
    log: "Plot the *MINUS* log of the matrix values."
    colormap: "Color map to use for the heatmap. Available values can be seen here: http://matplotlib.org/examples/color/col ormaps_reference.html"
    vmin: "Minimum score value."
    vmax: "Maximum score value."
    dpi: "Resolution for the image in case theoutput is a raster graphics image (e.g png, jpg)."
    bigwig: "Bigwig file to plot below the matrix. This can for example be used to visualize A/B compartments or ChIP- seq data."
    bigwig_additional_vertical_axis: "Add an additional axis to determine the values of a bigwig file in 2D better."
    vmin_bigwig: "Minimum score value for bigwig."
    vmax_bigwig: "Maximum score value for bigwig"
    flip_bigwig_sign: "The sign of the bigwig values are flipped. Useful if hicPCA gives inverted values."
    scale_factor_bigwig: "Scale the values of a bigwig file by the given factor."
    font_size: "Fontsize in the plot for x and y axis."
    rotation_x: "Rotation in degrees for the labels of x axis."
    rotation_y: "Rotation in degrees for the labels of y axis."
    loops: "Bedgraph file to plot detected long range contacts from hicDetectLoops."
  }
}