version 1.0

task AribaMicplot {
  input {
    File? out_format
    Boolean? main_title
    Float? plot_height
    Float? plot_width
    String? use_he_ts
    Boolean? interrupted
    Int? min_samples
    Boolean? no_combinations
    Int? panel_heights
    Int? panel_widths
    Float? count_legend_x
    Float? p_cut_off
    Boolean? xk_cd
    String? colour_map
    Int? number_of_colours
    Int? colour_skip
    Int? plot_types
    Int? h_lines
    Float? jitter_width
    Float? log_y
    Float? point_size
    Float? point_scale
    Float? violin_width
    Float? dot_size
    Boolean? dot_outline
    Int? dot_y_text_size
    String prepare_ref_dir
    String run
    String mic_file
    String summary_file
    String out_prefix
  }
  command <<<
    ariba micplot \
      ~{prepare_ref_dir} \
      ~{run} \
      ~{mic_file} \
      ~{summary_file} \
      ~{out_prefix} \
      ~{if defined(out_format) then ("--out_format " +  '"' + out_format + '"') else ""} \
      ~{if (main_title) then "--main_title" else ""} \
      ~{if defined(plot_height) then ("--plot_height " +  '"' + plot_height + '"') else ""} \
      ~{if defined(plot_width) then ("--plot_width " +  '"' + plot_width + '"') else ""} \
      ~{if defined(use_he_ts) then ("--use_hets " +  '"' + use_he_ts + '"') else ""} \
      ~{if (interrupted) then "--interrupted" else ""} \
      ~{if defined(min_samples) then ("--min_samples " +  '"' + min_samples + '"') else ""} \
      ~{if (no_combinations) then "--no_combinations" else ""} \
      ~{if defined(panel_heights) then ("--panel_heights " +  '"' + panel_heights + '"') else ""} \
      ~{if defined(panel_widths) then ("--panel_widths " +  '"' + panel_widths + '"') else ""} \
      ~{if defined(count_legend_x) then ("--count_legend_x " +  '"' + count_legend_x + '"') else ""} \
      ~{if defined(p_cut_off) then ("--p_cutoff " +  '"' + p_cut_off + '"') else ""} \
      ~{if (xk_cd) then "--xkcd" else ""} \
      ~{if defined(colour_map) then ("--colourmap " +  '"' + colour_map + '"') else ""} \
      ~{if defined(number_of_colours) then ("--number_of_colours " +  '"' + number_of_colours + '"') else ""} \
      ~{if defined(colour_skip) then ("--colour_skip " +  '"' + colour_skip + '"') else ""} \
      ~{if defined(plot_types) then ("--plot_types " +  '"' + plot_types + '"') else ""} \
      ~{if defined(h_lines) then ("--hlines " +  '"' + h_lines + '"') else ""} \
      ~{if defined(jitter_width) then ("--jitter_width " +  '"' + jitter_width + '"') else ""} \
      ~{if defined(log_y) then ("--log_y " +  '"' + log_y + '"') else ""} \
      ~{if defined(point_size) then ("--point_size " +  '"' + point_size + '"') else ""} \
      ~{if defined(point_scale) then ("--point_scale " +  '"' + point_scale + '"') else ""} \
      ~{if defined(violin_width) then ("--violin_width " +  '"' + violin_width + '"') else ""} \
      ~{if defined(dot_size) then ("--dot_size " +  '"' + dot_size + '"') else ""} \
      ~{if (dot_outline) then "--dot_outline" else ""} \
      ~{if defined(dot_y_text_size) then ("--dot_y_text_size " +  '"' + dot_y_text_size + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out_format: "Output format of image file. Use anything that\\nmatplotlib can save to, eg pdf or png [pdf]"
    main_title: "\\\"title in quotes\\\"\\nMain title of plot. Default is to use the antibiotic\\nname"
    plot_height: "Height of plot in inches [7]"
    plot_width: "Width of plot in inches [7]"
    use_he_ts: "How to deal with HET snps. Choose from yes,no,exclude.\\nyes: count a het SNP as present. no: do not count a\\nhet SNP as present. exclude: completely remove any\\nsample with any het SNP [yes]"
    interrupted: "Include interrupted genes (as in the assembled column\\nof the ariba summary files)"
    min_samples: "Minimum number of samples in each column required to\\ninclude in plot [1]"
    no_combinations: "Do not show combinations of variants. Instead separate\\nout into one box/violin plot per variant."
    panel_heights: ",height2\\nTwo integers that determine relative height of top and\\nbottom plots. eg 5,1 means ratio of 5:1 between top\\nand bottom panel heights [9,2]"
    panel_widths: ",width2\\nTwo integers that determine relative width of plots\\nand space used by counts legend. eg 5,1 means ratio of\\n5:1 between top and bottom panel widths. Only applies\\nwhen plotting points and --point_size 0 [5,1]"
    count_legend_x: "Control x position of counts legend when plotting\\npoints and --point_size 0 [-2]"
    p_cut_off: "p-value cutoff for Mann-Whitney tests [0.05]"
    xk_cd: "Best used with xkcd font installed ;)"
    colour_map: "name\\nColours to use. See\\nhttp://matplotlib.org/users/colormaps.html [Accent]"
    number_of_colours: "Number of colours in plot. 0:same number as columns in\\nthe plot. 1:all black. >1: take the first N colours\\nfrom the colourmap specified by --colourmap and cycle\\nthem [0]"
    colour_skip: ",FLOAT2\\nIf using a continuous colourmap, --colour_skip a,b\\n(where 0 <= a < b <= 1) will skip the range between a\\nand b. Useful for excluding near-white colours"
    plot_types: ",type2,...\\nTypes of plots to make, separated by commas. Choose\\nfrom violin,point [violin,point]"
    h_lines: ",float2,...\\nComma-separated list of positions at which to draw\\nhorizontal lines. Default is to draw no lines."
    jitter_width: "Jitter width option when plotting points [0.1]"
    log_y: "Base of log applied to y values. Set to zero to not\\nlog [2]"
    point_size: "Size of points when --plot_types includes point. If\\nzero, will group points and size them proportional to\\nthe group size [4]"
    point_scale: "Scale point sizes when --point_size 0. All point sizes\\nare multiplied by this number. Useful if you have\\nlarge data set [1]"
    violin_width: "Width of violins [0.75]"
    dot_size: "Size of dots in lower part of plot [100]"
    dot_outline: "Black outline around all dots (whether coloured or\\nnot) in lower part of plots"
    dot_y_text_size: "Text size of labels [7]\\n"
    prepare_ref_dir: "Name of output directory when \\\"ariba prepareref\\\" was"
    run: "antibiotic            Antibiotic name. Must exactly match a column from the"
    mic_file: "File containing MIC data for each sample and one or\\nmore antibiotics"
    summary_file: "File made by running \\\"ariba summary\\\""
    out_prefix: "Prefix of output files"
  }
  output {
    File out_stdout = stdout()
    File out_out_format = "${in_out_format}"
  }
}