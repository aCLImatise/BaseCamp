version 1.0

task InterveneVenn {
  input {
    Boolean? input_genomic_regions
    String? type
    File? names
    Boolean? filenames
    Float? bed_tools_options
    File? output_folder_path
    Boolean? save_overlaps
    Int? overlap_thresh
    String? title
    String? project
    String? colors
    String? border_colors
    String? fig_type
    Int? fig_size
    Int? font_size
    Int? dpi
    String? fill
    Boolean? test
  }
  command <<<
    intervene venn \
      ~{if (input_genomic_regions) then "-i" else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(names) then ("--names " +  '"' + names + '"') else ""} \
      ~{if (filenames) then "--filenames" else ""} \
      ~{if defined(bed_tools_options) then ("--bedtools-options " +  '"' + bed_tools_options + '"') else ""} \
      ~{if defined(output_folder_path) then ("--output " +  '"' + output_folder_path + '"') else ""} \
      ~{if (save_overlaps) then "--save-overlaps" else ""} \
      ~{if defined(overlap_thresh) then ("--overlap-thresh " +  '"' + overlap_thresh + '"') else ""} \
      ~{if defined(title) then ("--title " +  '"' + title + '"') else ""} \
      ~{if defined(project) then ("--project " +  '"' + project + '"') else ""} \
      ~{if defined(colors) then ("--colors " +  '"' + colors + '"') else ""} \
      ~{if defined(border_colors) then ("--bordercolors " +  '"' + border_colors + '"') else ""} \
      ~{if defined(fig_type) then ("--figtype " +  '"' + fig_type + '"') else ""} \
      ~{if defined(fig_size) then ("--figsize " +  '"' + fig_size + '"') else ""} \
      ~{if defined(font_size) then ("--fontsize " +  '"' + font_size + '"') else ""} \
      ~{if defined(dpi) then ("--dpi " +  '"' + dpi + '"') else ""} \
      ~{if defined(fill) then ("--fill " +  '"' + fill + '"') else ""} \
      ~{if (test) then "--test" else ""}
  >>>
  parameter_meta {
    input_genomic_regions: "[INPUT [INPUT ...]], --input [INPUT [INPUT ...]]\\nInput genomic regions in (BED/GTF/GFF) format or lists of genes/SNPs IDs.\\nFor files in a directory use *.<extension>. e.g. *.bed"
    type: "Type of input sets. Genomic regions or lists of genes/SNPs. Default is \\\"genomic\\\""
    names: "Comma-separated list of names as labels for input files.\\nIf it is not set file names will be used as labels.\\nFor example: --names=A,B,C,D,E,F"
    filenames: "Use file names as labels instead. Default is \\\"False\\\""
    bed_tools_options: "List any of the arguments available for bedtools intersect command.\\nType bedtools intersect --help to view all the options.\\nFor example: --bedtools-options f=0.8,r,etc"
    output_folder_path: "Output folder path where results will be stored. Default is current working directory."
    save_overlaps: "Save overlapping regions/names for all the combinations as bed/txt. Default is \\\"False\\\"."
    overlap_thresh: "Minimum threshold to save the overlapping regions/names as bed/txt. Default is: \\\"1\\\""
    title: "Title of the plot. By default it is not set."
    project: "Project name for the output. Default is: \\\"Intervene\\\""
    colors: "Comma-separated list of matplotlib-valid colors for fill. E.g., --colors=r,b,k"
    border_colors: "A matplotlib-valid color for venn borders. E.g., --bordercolor=red"
    fig_type: "Figure type for the plot. e.g. --figtype svg. Default is \\\"pdf\\\""
    fig_size: "FIGSIZE\\nFigure size as width and height.e.g. --figsize 12 12."
    font_size: "Font size for the plot labels.Default is: \\\"14\\\""
    dpi: "Dots-per-inch (DPI) for the output. Default is: \\\"300\\\""
    fill: "Report number or  percentage of overlaps (Only if --type=list). Default is \\\"number\\\""
    test: "This will run the program on test data."
  }
  output {
    File out_stdout = stdout()
    File out_output_folder_path = "${in_output_folder_path}"
  }
}