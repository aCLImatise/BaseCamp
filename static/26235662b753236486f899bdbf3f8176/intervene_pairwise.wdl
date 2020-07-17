version 1.0

task IntervenePairwise {
  input {
    Boolean? input_genomic_regions
    String? type
    String? compute
    String? bed_tools_options
    Boolean? corr
    String? corr_type
    String? h_type
    String? triangle
    Boolean? diagonal
    String? names
    Boolean? filenames
    Boolean? sort
    String? genome
    String? output_folder_path
    String? project
    String? bar_label
    String? bar_color
    String? font_size
    String? title
    String? space
    String? fig_type
    String? fig_size
    String? dpi
    Boolean? script_only
    Boolean? test
  }
  command <<<
    intervene pairwise \
      ~{true="-i" false="" input_genomic_regions} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(compute) then ("--compute " +  '"' + compute + '"') else ""} \
      ~{if defined(bed_tools_options) then ("--bedtools-options " +  '"' + bed_tools_options + '"') else ""} \
      ~{true="--corr" false="" corr} \
      ~{if defined(corr_type) then ("--corrtype " +  '"' + corr_type + '"') else ""} \
      ~{if defined(h_type) then ("--htype " +  '"' + h_type + '"') else ""} \
      ~{if defined(triangle) then ("--triangle " +  '"' + triangle + '"') else ""} \
      ~{true="--diagonal" false="" diagonal} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{true="--filenames" false="" filenames} \
      ~{true="--sort" false="" sort} \
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
      ~{true="--scriptonly" false="" script_only} \
      ~{true="--test" false="" test}
  >>>
  parameter_meta {
    input_genomic_regions: "[INPUT [INPUT ...]], --input [INPUT [INPUT ...]] Input genomic regions in (BED/GTF/GFF) format.  For files in a directory use *.<extension>. e.g. *.bed"
    type: "Type of input sets. Genomic regions or lists of genes/SNPs sets. Default is \"genomic\"."
    compute: "Compute count/fraction of overlaps or other statistical relationships.  count: calculates the number of overlaps.  frac: calculates the fraction of overlap. (Default) jaccard: calculate the Jaccard statistic.  reldist: calculate the distribution of relative distances. fisher: calculate Fisher`s statistic.  Note: For jaccard and reldist regions should be pre-shorted or set --sort."
    bed_tools_options: "List any of the arguments available for bedtools subcommands: interset, jaccard, fisher, reldist. Type bedtools <subcommand> --help to view all the options. For example: --bedtools-options f=0.8,r,etc"
    corr: "Compute the correlation.  Default is \"False\"."
    corr_type: "Select the type of correlation.  pearson: computes the Pearson correlation. (Default)  kendall: computes the Kendall correlation.  spearman: computes the Spearman correlation.  Note: This only works if --corr is set."
    h_type: "Heatmap plot type. Default is \"tribar\"."
    triangle: "Show lower/upper triangle of the matrix as heatmap if --htype=tribar. Default is \"lower\"."
    diagonal: "Show the diagonal values in the heatmap.  Default is \"False\"."
    names: "Comma-separated list of names as labels for input files. If it is not set file names will be used as labels. For example: --names=A,B,C,D,E,F"
    filenames: "Use file names as labels instead.  Default is \"False\"."
    sort: "Set this only if your files are not sorted.  Default is \"False\"."
    genome: "Required argument if --compute=fisher. Needs to be a string assembly name like \"mm10\" or \"hg38\""
    output_folder_path: "Output folder path where results will be stored.  Default is current working directory."
    project: "Project name for the output. Default is: \"Intervene\""
    bar_label: "x-axis label of boxplot if --htype=tribar. Default is \"Set size\""
    bar_color: "Boxplot color (hex vlaue or name, e.g. blue). Default is \"#53cfff\"."
    font_size: "Label font size. Default is \"8\"."
    title: "Heatmap main title. Default is \"Pairwise intersection\"."
    space: "White space between barplt and heatmap, if --htype=tribar. Default is \"1.3\"."
    fig_type: "Figure type for the plot. e.g. --figtype svg. Default is \"pdf\""
    fig_size: "FIGSIZE Figure size for the output plot (width,height). e.g.  --figsize 8 8"
    dpi: "Dots-per-inch (DPI) for the output. Default is: \"300\"."
    script_only: "Set to generate Rscript only, if R/Corrplot package are not installed. Default is \"False\"."
    test: "This will run the program on test data."
  }
}