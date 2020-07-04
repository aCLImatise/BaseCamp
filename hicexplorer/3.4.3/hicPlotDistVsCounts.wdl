version 1.0

task HicPlotDistVsCounts {
  input {
    Array[String] matrices
    File? plot_file
    Array[String] labels
    Boolean? skip_diagonal
    Int? maxdepth
    Boolean? per_chr
    Array[String] chromosome_exclude
    String? outfile_data
    String? plot_size
  }
  command <<<
    hicPlotDistVsCounts \
      ~{if defined(matrices) then ("--matrices " +  '"' + matrices + '"') else ""} \
      ~{if defined(plot_file) then ("--plotFile " +  '"' + plot_file + '"') else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{true="--skipDiagonal" false="" skip_diagonal} \
      ~{if defined(maxdepth) then ("--maxdepth " +  '"' + maxdepth + '"') else ""} \
      ~{true="--perchr" false="" per_chr} \
      ~{if defined(chromosome_exclude) then ("--chromosomeExclude " +  '"' + chromosome_exclude + '"') else ""} \
      ~{if defined(outfile_data) then ("--outFileData " +  '"' + outfile_data + '"') else ""} \
      ~{if defined(plot_size) then ("--plotsize " +  '"' + plot_size + '"') else ""}
  >>>
  parameter_meta {
    matrices: "Hi-C normalized (corrected) matrices. Each path should be separated by a space."
    plot_file: "name, -o file name File name to save the file. The given file ending will be used to determine the image format. The available options are: .png, .emf, .eps, .pdf and .svg."
    labels: "Label to assign to each matrix file. Each label should be separated by a space. Quote labels that contain spaces: E.g. --labels label1 \"labels 2\". If no labels are given then the file name is used."
    skip_diagonal: "If set, diagonal counts are not included."
    maxdepth: "bp     Maximum distance from diagonal to use. In other words, distances up to maxDepth are computed. Default is 3 million bp."
    per_chr: "If given, computes and display distance versus Hi-C counts plots for each chromosome stored in the matrices passed to --matrices."
    chromosome_exclude: "Exclude the given list of chromosomes. This is useful for example to exclude the Y chromosome. The names of the chromosomes should be separated by space."
    outfile_data: "If given, the data underlying the plots is saved on this file."
    plot_size: "PLOTSIZE Width and height of the plot (in inches). Default is 6*number of cols, 4 * number of rows. The maximum number of rows is 4. Example: --plotsize 6 5"
  }
}