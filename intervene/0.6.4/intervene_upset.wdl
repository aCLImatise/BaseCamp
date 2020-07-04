version 1.0

task InterveneUpset {
  input {
    Boolean? input_genomic_regions
    String? type
    String? names
    Boolean? filenames
    String? bed_tools_options
    String? output_folder_path
    Boolean? save_overlaps
    String? overlap_thresh
    String? project
    String? order
    String? n_inter
    Boolean? show_zero
    Boolean? show_size
    String? mb_color
    String? sb_color
    String? mb_label
    String? sx_label
    String? fig_type
    String? fig_size
    String? dpi
    Boolean? script_only
    Boolean? show_shiny
    Boolean? test
  }
  command <<<
    intervene upset \
      ~{true="-i" false="" input_genomic_regions} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{true="--filenames" false="" filenames} \
      ~{if defined(bed_tools_options) then ("--bedtools-options " +  '"' + bed_tools_options + '"') else ""} \
      ~{if defined(output_folder_path) then ("--output " +  '"' + output_folder_path + '"') else ""} \
      ~{true="--save-overlaps" false="" save_overlaps} \
      ~{if defined(overlap_thresh) then ("--overlap-thresh " +  '"' + overlap_thresh + '"') else ""} \
      ~{if defined(project) then ("--project " +  '"' + project + '"') else ""} \
      ~{if defined(order) then ("--order " +  '"' + order + '"') else ""} \
      ~{if defined(n_inter) then ("--ninter " +  '"' + n_inter + '"') else ""} \
      ~{true="--showzero" false="" show_zero} \
      ~{true="--showsize" false="" show_size} \
      ~{if defined(mb_color) then ("--mbcolor " +  '"' + mb_color + '"') else ""} \
      ~{if defined(sb_color) then ("--sbcolor " +  '"' + sb_color + '"') else ""} \
      ~{if defined(mb_label) then ("--mblabel " +  '"' + mb_label + '"') else ""} \
      ~{if defined(sx_label) then ("--sxlabel " +  '"' + sx_label + '"') else ""} \
      ~{if defined(fig_type) then ("--figtype " +  '"' + fig_type + '"') else ""} \
      ~{if defined(fig_size) then ("--figsize " +  '"' + fig_size + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{true="--scriptonly" false="" script_only} \
      ~{true="--showshiny" false="" show_shiny} \
      ~{true="--test" false="" test}
  >>>
  parameter_meta {
    input_genomic_regions: "[INPUT [INPUT ...]], --input [INPUT [INPUT ...]] Input genomic regions in (BED/GTF/GFF) format or lists of genes/SNPs IDs. For files in a directory use *.<extension>. e.g. *.bed"
    type: "Type of input sets. Genomic regions or lists of genes/SNPs sets. Default is \"genomic\"."
    names: "Comma-separated list of names as labels for input files. If it is not set file names will be used as labels. For example: --names=A,B,C,D,E,F"
    filenames: "Use file names as labels instead. Default is \"False\"."
    bed_tools_options: "List any of the arguments available for bedtools intersect command. Type bedtools intersect --help to view all the options. For example: --bedtools-options f=0.8,r,etc"
    output_folder_path: "Output folder path where results will be stored. Default is current working directory."
    save_overlaps: "Save overlapping regions/names for all the combinations as bed/txt.Default is \"False\"."
    overlap_thresh: "Minimum threshold to save the overlapping regions/names as bed/txt. Default is: \"1\""
    project: "Project name for the output. Default is: \"Intervene\""
    order: "The order of intersections of sets. e.g. --order degree. Default is \"freq\"."
    n_inter: "Number of top intersections to show in plot. Default is \"30\"."
    show_zero: "Show empty intersection combinations. Default is \"False\"."
    show_size: "Show intersection sizes above bars. Default is \"True\"."
    mb_color: "Color of the main bar plot. Default is: \"#ea5d4e\"."
    sb_color: "Color of set size bar plot. Default is: \"#317eab\"."
    mb_label: "The y-axis label of the intersection size bars. Default is: \"No. of Intersections\"."
    sx_label: "The x-axis label of the set size bars. Default is: \"Set size\"."
    fig_type: "Figure type for the plot. e.g. --figtype svg. Default is \"pdf\""
    fig_size: "FIGSIZE Figure size for the output plot (width,height). e.g.  --figsize 14 8"
    dpi: "Dots-per-inch (DPI) for the output. Default is: \"300\"."
    script_only: "Set to generate Rscript only, if R/UpSetR package is not installed. Default is \"False\"."
    show_shiny: "Print the combinations of intersections to input to Shiny App. Default is \"False\"."
    test: "This will run the program on test data."
  }
}