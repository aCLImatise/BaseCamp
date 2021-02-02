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
    Int? region_two
    Boolean? logo_nep
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
      ~{if defined(region_two) then ("--region2 " +  '"' + region_two + '"') else ""} \
      ~{if (logo_nep) then "--log1p" else ""}
  >>>
  parameter_meta {
    matrix: "Path of the Hi-C matrix to plot."
    out_filename: "File name to save the image."
    title: "Plot title."
    score_name: "Score name label for the heatmap legend."
    per_chromosome: "Instead of plotting the whole matrix, each chromosome\\nis plotted next to the other. This parameter is not\\ncompatible with --region."
    clear_masked_bins: "If set, masked bins are removed from the matrix and\\nthe nearest bins are extended to cover the empty space\\ninstead of plotting black lines."
    chromosome_order: "Chromosomes and order in which the chromosomes should\\nbe plotted. This option overrides --region and\\n--region2."
    region: "Plot only this region. The format is chr:start-end The\\nplotted region contains the main diagonal and is\\nsymmetric unless --region2 is given."
    region_two: "If given, then only the region defined by --region and\\n--region2 is given. The format is the same as\\n--region1."
    logo_nep: "Plot the log1p of the matrix values.\\n--log                 Plot the *MINUS* log of the matrix values.\\n--colorMap COLORMAP   Color map to use for the heatmap. Available values can\\nbe seen here: http://matplotlib.org/examples/color/col\\normaps_reference.html\\n--vMin VMIN           Minimum score value.\\n--vMax VMAX           Maximum score value.\\n--dpi DPI             Resolution for the image in case theoutput is a raster\\ngraphics image (e.g png, jpg).\\n--bigwig BIGWIG [BIGWIG ...]\\nBigwig file to plot below the matrix. This can for\\nexample be used to visualize A/B compartments or ChIP-\\nseq data.\\n--bigwigAdditionalVerticalAxis\\nAdd an additional axis to determine the values of a\\nbigwig file in 2D better.\\n--vMinBigwig VMINBIGWIG\\nMinimum score value for bigwig.\\n--vMaxBigwig VMAXBIGWIG\\nMaximum score value for bigwig\\n--flipBigwigSign      The sign of the bigwig values are flipped. Useful if\\nhicPCA gives inverted values.\\n--scaleFactorBigwig SCALEFACTORBIGWIG\\nScale the values of a bigwig file by the given factor.\\n--fontsize FONTSIZE   Fontsize in the plot for x and y axis.\\n--rotationX ROTATIONX\\nRotation in degrees for the labels of x axis.\\n--rotationY ROTATIONY\\nRotation in degrees for the labels of y axis.\\n--increaseFigureWidth INCREASEFIGUREWIDTH\\nPlotting additional bigwig tracks can cause\\ncompression in x or y direction of the heatmap. Set\\nthis factor to a value unequal to 0 to correct this.\\n--increaseFigureHeight INCREASEFIGUREHEIGHT\\nPlotting additional bigwig tracks can cause\\ncompression in x or y direction of the heatmap. Set\\nthis factor to a value unequal to 0 to correct this.\\n--loops LOOPS         Bedgraph file to plot detected long range contacts\\nfrom hicDetectLoops.\\n--help, -h            show this help message and exit\\n--version             show program's version number and exit\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out_filename = "${in_out_filename}"
  }
}