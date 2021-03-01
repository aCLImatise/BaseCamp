version 1.0

task IntervenePairwise {
  input {
    Boolean? input_genomic_regions
    String? type
    String? compute
    Float? bed_tools_options
    Boolean? corr
    String? corr_type
    String? h_type
    String? triangle
    Boolean? diagonal
    File? names
    Boolean? filenames
    Boolean? sort
    String? genome
    File? output_folder_path
    String? project
    Int? bar_label
    Int? bar_color
    Int? font_size
    String? title
    Float? space
    String? fig_type
    Int? fig_size
    Int? dpi
    Boolean? script_only
    Boolean? test
  }
  command <<<
    intervene pairwise \
      ~{if (input_genomic_regions) then "-i" else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(compute) then ("--compute " +  '"' + compute + '"') else ""} \
      ~{if defined(bed_tools_options) then ("--bedtools-options " +  '"' + bed_tools_options + '"') else ""} \
      ~{if (corr) then "--corr" else ""} \
      ~{if defined(corr_type) then ("--corrtype " +  '"' + corr_type + '"') else ""} \
      ~{if defined(h_type) then ("--htype " +  '"' + h_type + '"') else ""} \
      ~{if defined(triangle) then ("--triangle " +  '"' + triangle + '"') else ""} \
      ~{if (diagonal) then "--diagonal" else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if (filenames) then "--filenames" else ""} \
      ~{if (sort) then "--sort" else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(output_folder_path) then ("--output " +  '"' + output_folder_path + '"') else ""} \
      ~{if defined(project) then ("--project " +  '"' + project + '"') else ""} \
      ~{if defined(bar_label) then ("--barlabel " +  '"' + bar_label + '"') else ""} \
      ~{if defined(bar_color) then ("--barcolor " +  '"' + bar_color + '"') else ""} \
      ~{if defined(font_size) then ("--fontsize " +  '"' + font_size + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(space) then ("--space " +  '"' + space + '"') else ""} \
      ~{if defined(fig_type) then ("--figtype " +  '"' + fig_type + '"') else ""} \
      ~{if defined(fig_size) then ("--figsize " +  '"' + fig_size + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if (script_only) then "--scriptonly" else ""} \
      ~{if (test) then "--test" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/intervene:0.6.5--pyh3252c3a_1"
  }
  parameter_meta {
    input_genomic_regions: "[INPUT [INPUT ...]], --input [INPUT [INPUT ...]]\\nInput genomic regions in (BED/GTF/GFF) format.\\nFor files in a directory use *.<extension>. e.g. *.bed"
    type: "Type of input sets. Genomic regions or lists of genes/SNPs sets. Default is \\\"genomic\\\"."
    compute: "Compute count/fraction of overlaps or other statistical relationships.\\ncount: calculates the number of overlaps.\\nfrac: calculates the fraction of overlap. (Default)\\njaccard: calculate the Jaccard statistic.\\nreldist: calculate the distribution of relative distances.\\nfisher: calculate Fisher`s statistic.\\nNote: For jaccard and reldist regions should be pre-shorted or set --sort."
    bed_tools_options: "List any of the arguments available for bedtools subcommands: interset, jaccard, fisher, reldist.\\nType bedtools <subcommand> --help to view all the options.\\nFor example: --bedtools-options f=0.8,r,etc"
    corr: "Compute the correlation.\\nDefault is \\\"False\\\"."
    corr_type: "Select the type of correlation.\\npearson: computes the Pearson correlation. (Default)\\nkendall: computes the Kendall correlation.\\nspearman: computes the Spearman correlation.\\nNote: This only works if --corr is set."
    h_type: "Heatmap plot type. Default is \\\"tribar\\\"."
    triangle: "Show lower/upper triangle of the matrix as heatmap if --htype=tribar. Default is \\\"lower\\\"."
    diagonal: "Show the diagonal values in the heatmap.\\nDefault is \\\"False\\\"."
    names: "Comma-separated list of names as labels for input files.\\nIf it is not set file names will be used as labels.\\nFor example: --names=A,B,C,D,E,F"
    filenames: "Use file names as labels instead.\\nDefault is \\\"False\\\"."
    sort: "Set this only if your files are not sorted.\\nDefault is \\\"False\\\"."
    genome: "Required argument if --compute=fisher.\\nNeeds to be a string assembly name like \\\"mm10\\\" or \\\"hg38\\\""
    output_folder_path: "Output folder path where results will be stored.\\nDefault is current working directory."
    project: "Project name for the output. Default is: \\\"Intervene\\\""
    bar_label: "x-axis label of boxplot if --htype=tribar. Default is \\\"Set size\\\""
    bar_color: "Boxplot color (hex vlaue or name, e.g. blue). Default is \\\"#53cfff\\\"."
    font_size: "Label font size. Default is \\\"8\\\"."
    title: "Heatmap main title. Default is \\\"Pairwise intersection\\\"."
    space: "White space between barplt and heatmap, if --htype=tribar. Default is \\\"1.3\\\"."
    fig_type: "Figure type for the plot. e.g. --figtype svg. Default is \\\"pdf\\\""
    fig_size: "FIGSIZE\\nFigure size for the output plot (width,height). e.g.  --figsize 8 8"
    dpi: "Dots-per-inch (DPI) for the output. Default is: \\\"300\\\"."
    script_only: "Set to generate Rscript only, if R/Corrplot package are not installed. Default is \\\"False\\\"."
    test: "This will run the program on test data."
  }
  output {
    File out_stdout = stdout()
    File out_output_folder_path = "${in_output_folder_path}"
  }
}