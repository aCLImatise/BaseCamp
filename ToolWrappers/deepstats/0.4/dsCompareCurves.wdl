version 1.0

task DsCompareCurves {
  input {
    File? deeptools_file_obtained
    File? output_prefix_files
    String? comparison
    String? score_labels
    String? region_labels
    Int? signal_name
    Int? bootstraps
    Float? bootstrap_sci
    Int? cpu
    Float? wilcox_threshold
    String? first_region_name
    String? second_region_name
    String? boot_plot_share_y
    File? boot_plot_colors
    Float? boot_plot_ratio
    Float? boot_plot_width
    Float? boot_plot_height
    Float? wilcox_plot_width
    Float? wilcox_plot_height
    File? font
  }
  command <<<
    dsCompareCurves \
      ~{if defined(deeptools_file_obtained) then ("--input " +  '"' + deeptools_file_obtained + '"') else ""} \
      ~{if defined(output_prefix_files) then ("--output " +  '"' + output_prefix_files + '"') else ""} \
      ~{if defined(comparison) then ("--comparison " +  '"' + comparison + '"') else ""} \
      ~{if defined(score_labels) then ("--scoreLabels " +  '"' + score_labels + '"') else ""} \
      ~{if defined(region_labels) then ("--regionLabels " +  '"' + region_labels + '"') else ""} \
      ~{if defined(signal_name) then ("--signalName " +  '"' + signal_name + '"') else ""} \
      ~{if defined(bootstraps) then ("--bootstraps " +  '"' + bootstraps + '"') else ""} \
      ~{if defined(bootstrap_sci) then ("--bootstrapsCI " +  '"' + bootstrap_sci + '"') else ""} \
      ~{if defined(cpu) then ("--CPU " +  '"' + cpu + '"') else ""} \
      ~{if defined(wilcox_threshold) then ("--wilcoxThreshold " +  '"' + wilcox_threshold + '"') else ""} \
      ~{if defined(first_region_name) then ("--firstRegionName " +  '"' + first_region_name + '"') else ""} \
      ~{if defined(second_region_name) then ("--secondRegionName " +  '"' + second_region_name + '"') else ""} \
      ~{if defined(boot_plot_share_y) then ("--bootPlotShareY " +  '"' + boot_plot_share_y + '"') else ""} \
      ~{if defined(boot_plot_colors) then ("--bootPlotColors " +  '"' + boot_plot_colors + '"') else ""} \
      ~{if defined(boot_plot_ratio) then ("--bootPlotRatio " +  '"' + boot_plot_ratio + '"') else ""} \
      ~{if defined(boot_plot_width) then ("--bootPlotWidth " +  '"' + boot_plot_width + '"') else ""} \
      ~{if defined(boot_plot_height) then ("--bootPlotHeight " +  '"' + boot_plot_height + '"') else ""} \
      ~{if defined(wilcox_plot_width) then ("--wilcoxPlotWidth " +  '"' + wilcox_plot_width + '"') else ""} \
      ~{if defined(wilcox_plot_height) then ("--wilcoxPlotHeight " +  '"' + wilcox_plot_height + '"') else ""} \
      ~{if defined(font) then ("--font " +  '"' + font + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    deeptools_file_obtained: "DeepTools file obtained from computeMatrix\\n--outFileNameMatrix. Alternatively, a .dscc file from\\nprevious dsCompareCurves runs can be provided for\\nreplotting purposes and to avoid the bootstraps\\ncomputation once more."
    output_prefix_files: "Output prefix. Three files will be generated, a .pdf\\nfile containing the plot and a .dscc file containing\\nthe bootsraps information ( RDS file ). If a .dscc\\nfile is provided as input, only the plot will be\\nproduced as pdf."
    comparison: "When specifying 'regions' or 'scores', force a given\\ncomparison. The correct comparison to perform is\\notherwise automatically detected."
    score_labels: "Names of the scores to be displayed on the plots. It\\nmust be provided as text seperated by semi-colons,\\ni.e. 'Score A;Score B;Score C'."
    region_labels: "Names of the regions to be displayed on the plots. It\\nmust be provided as text seperated by semi-colons,\\ni.e. 'Regions A; Regions B; Regions C'."
    signal_name: "Name given to the signal, for instance 'H3K4me3\\nlog2input'. Default: 'Genomic signal'"
    bootstraps: "Number of bootstraps to perform. Default: 1000."
    bootstrap_sci: "Confidence intervals (CI) threshold for bootstraps.\\nDefault: 0.95."
    cpu: "Number of CPU to use. Default: 4."
    wilcox_threshold: "Threshold used to define significant bins on the\\nWilcoxon rank-sum test plot. Default: 0.05"
    first_region_name: "Name of the central or left region. Default: TSS"
    second_region_name: "Name of the right region, only used when deeptools\\ncomputeMatrix ran in scaled-regions mode. Default: TES"
    boot_plot_share_y: "Given TRUE or FALSE, defines if the bootstraps plots\\nshould share the same scale on the y axis or not.\\nDefault: TRUE"
    boot_plot_colors: "Change the bootstraps plot color palette to a user-\\nprovided one. The file must be tab-delimited and\\ncontain for each line two HTML color codes ( #3366CC\\n#769EF2 ). The first column corresponds to the mean\\ncolor, the second column corresponds to the color of\\nthe bootstrap confidence interval shadowed area. The\\ndefault color scale contains 6 colors that are color\\nblind friendly using the dichromat R package."
    boot_plot_ratio: "Changes the aspect ratio of the plot. A value < 1\\nresults in a wide plot, a value > 1 results in a\\nnarrow plot. Default: 0.85."
    boot_plot_width: "How large the bootstraps plot should be. Default: 5.2"
    boot_plot_height: "How tall the bootstraps plot should be. Default: 3.7"
    wilcox_plot_width: "How large the Wilcoxon rank-sum test plot should be.\\nDefault: 4.6"
    wilcox_plot_height: "How tall the Wilcoxon rank-sum test plot should be.\\nDefault: 4.6"
    font: "Font used for plotting, given a TTF file. Default is\\nusually Helvetica.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}