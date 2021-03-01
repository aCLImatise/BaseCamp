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
    File? outfile_data
    Int? plot_size
  }
  command <<<
    hicPlotDistVsCounts \
      ~{if defined(matrices) then ("--matrices " +  '"' + matrices + '"') else ""} \
      ~{if defined(plot_file) then ("--plotFile " +  '"' + plot_file + '"') else ""} \
      ~{if defined(labels) then ("--labels " +  '"' + labels + '"') else ""} \
      ~{if (skip_diagonal) then "--skipDiagonal" else ""} \
      ~{if defined(maxdepth) then ("--maxdepth " +  '"' + maxdepth + '"') else ""} \
      ~{if (per_chr) then "--perchr" else ""} \
      ~{if defined(chromosome_exclude) then ("--chromosomeExclude " +  '"' + chromosome_exclude + '"') else ""} \
      ~{if defined(outfile_data) then ("--outFileData " +  '"' + outfile_data + '"') else ""} \
      ~{if defined(plot_size) then ("--plotsize " +  '"' + plot_size + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    matrices: "Hi-C normalized (corrected) matrices. Each path should\\nbe separated by a space."
    plot_file: "name, -o file name\\nFile name to save the file. The given file ending will\\nbe used to determine the image format. The available\\noptions are: .png, .emf, .eps, .pdf and .svg."
    labels: "Label to assign to each matrix file. Each label should\\nbe separated by a space. Quote labels that contain\\nspaces: E.g. --labels label1 \\\"labels 2\\\". If no labels\\nare given then the file name is used."
    skip_diagonal: "If set, diagonal counts are not included."
    maxdepth: "bp     Maximum distance from diagonal to use. In other words,\\ndistances up to maxDepth are computed. Default is 3\\nmillion bp."
    per_chr: "If given, computes and display distance versus Hi-C\\ncounts plots for each chromosome stored in the\\nmatrices passed to --matrices."
    chromosome_exclude: "Exclude the given list of chromosomes. This is useful\\nfor example to exclude the Y chromosome. The names of\\nthe chromosomes should be separated by space."
    outfile_data: "If given, the data underlying the plots is saved on\\nthis file."
    plot_size: "PLOTSIZE\\nWidth and height of the plot (in inches). Default is\\n6*number of cols, 4 * number of rows. The maximum\\nnumber of rows is 4. Example: --plotsize 6 5"
  }
  output {
    File out_stdout = stdout()
  }
}