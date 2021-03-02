version 1.0

task HicPlotMatrix {
  input {
    File? matrix
    File? out_filename
    String? title
    String? score_name
    Boolean? per_chromosome
    Boolean? clear_masked_bins
    Array[String] chromosome_order
    Int? region
    Boolean? region_one_dot
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
    File? scale_factor_bigwig
    Int? font_size
    String? rotation_x
    String? rotation_y
    Int? increase_figure_width
    Int? increase_figure_height
    File? loops
  }
  command <<<
    hicPlotMatrix \
      ~{if defined(matrix) then ("--matrix " +  '"' + matrix + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(score_name) then ("--scoreName " +  '"' + score_name + '"') else ""} \
      ~{if (per_chromosome) then "--perChromosome" else ""} \
      ~{if (clear_masked_bins) then "--clearMaskedBins" else ""} \
      ~{if defined(chromosome_order) then ("--chromosomeOrder " +  '"' + chromosome_order + '"') else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if (region_one_dot) then "--region1." else ""} \
      ~{if (log) then "--log" else ""} \
      ~{if defined(colormap) then ("--colorMap " +  '"' + colormap + '"') else ""} \
      ~{if defined(vmin) then ("--vMin " +  '"' + vmin + '"') else ""} \
      ~{if defined(vmax) then ("--vMax " +  '"' + vmax + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(bigwig) then ("--bigwig " +  '"' + bigwig + '"') else ""} \
      ~{if (bigwig_additional_vertical_axis) then "--bigwigAdditionalVerticalAxis" else ""} \
      ~{if defined(vmin_bigwig) then ("--vMinBigwig " +  '"' + vmin_bigwig + '"') else ""} \
      ~{if defined(vmax_bigwig) then ("--vMaxBigwig " +  '"' + vmax_bigwig + '"') else ""} \
      ~{if (flip_bigwig_sign) then "--flipBigwigSign" else ""} \
      ~{if defined(scale_factor_bigwig) then ("--scaleFactorBigwig " +  '"' + scale_factor_bigwig + '"') else ""} \
      ~{if defined(font_size) then ("--fontsize " +  '"' + font_size + '"') else ""} \
      ~{if defined(rotation_x) then ("--rotationX " +  '"' + rotation_x + '"') else ""} \
      ~{if defined(rotation_y) then ("--rotationY " +  '"' + rotation_y + '"') else ""} \
      ~{if defined(increase_figure_width) then ("--increaseFigureWidth " +  '"' + increase_figure_width + '"') else ""} \
      ~{if defined(increase_figure_height) then ("--increaseFigureHeight " +  '"' + increase_figure_height + '"') else ""} \
      ~{if defined(loops) then ("--loops " +  '"' + loops + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    matrix: "Path of the Hi-C matrix to plot."
    out_filename: "File name to save the image."
    title: "Plot title."
    score_name: "Score name label for the heatmap legend."
    per_chromosome: "Instead of plotting the whole matrix, each chromosome\\nis plotted next to the other. This parameter is not\\ncompatible with --region."
    clear_masked_bins: "If set, masked bins are removed from the matrix and\\nthe nearest bins are extended to cover the empty space\\ninstead of plotting black lines."
    chromosome_order: "Chromosomes and order in which the chromosomes should\\nbe plotted. This option overrides --region and\\n--region2."
    region: "Plot only this region. The format is chr:start-end The\\nplotted region contains the main diagonal and is\\nsymmetric unless --region2 is given."
    region_one_dot: "Plot the log1p of the matrix values."
    log: "Plot the *MINUS* log of the matrix values."
    colormap: "Color map to use for the heatmap. Available values can\\nbe seen here: http://matplotlib.org/examples/color/col\\normaps_reference.html"
    vmin: "Minimum score value."
    vmax: "Maximum score value."
    dpi: "Resolution for the image in case theoutput is a raster\\ngraphics image (e.g png, jpg)."
    bigwig: "Bigwig file to plot below the matrix. This can for\\nexample be used to visualize A/B compartments or ChIP-\\nseq data."
    bigwig_additional_vertical_axis: "Add an additional axis to determine the values of a\\nbigwig file in 2D better."
    vmin_bigwig: "Minimum score value for bigwig."
    vmax_bigwig: "Maximum score value for bigwig"
    flip_bigwig_sign: "The sign of the bigwig values are flipped. Useful if\\nhicPCA gives inverted values."
    scale_factor_bigwig: "Scale the values of a bigwig file by the given factor."
    font_size: "Fontsize in the plot for x and y axis."
    rotation_x: "Rotation in degrees for the labels of x axis."
    rotation_y: "Rotation in degrees for the labels of y axis."
    increase_figure_width: "Plotting additional bigwig tracks can cause\\ncompression in x or y direction of the heatmap. Set\\nthis factor to a value unequal to 0 to correct this."
    increase_figure_height: "Plotting additional bigwig tracks can cause\\ncompression in x or y direction of the heatmap. Set\\nthis factor to a value unequal to 0 to correct this."
    loops: "Bedgraph file to plot detected long range contacts\\nfrom hicDetectLoops."
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}