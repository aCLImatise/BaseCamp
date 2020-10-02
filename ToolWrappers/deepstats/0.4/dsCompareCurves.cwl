class: CommandLineTool
id: dsCompareCurves.cwl
inputs:
- id: in_input
  doc: "DeepTools file obtained from computeMatrix\n--outFileNameMatrix. Alternatively,\
    \ a .dscc file from\nprevious dsCompareCurves runs can be provided for\nreplotting\
    \ purposes and to avoid the bootstraps\ncomputation once more."
  type: File
  inputBinding:
    prefix: --input
- id: in_output
  doc: "Output prefix. Three files will be generated, a .pdf\nfile containing the\
    \ plot and a .dscc file containing\nthe bootsraps information ( RDS file ). If\
    \ a .dscc\nfile is provided as input, only the plot will be\nproduced as pdf."
  type: File
  inputBinding:
    prefix: --output
- id: in_comparison
  doc: "When specifying 'regions' or 'scores', force a given\ncomparison. The correct\
    \ comparison to perform is\notherwise automatically detected."
  type: string
  inputBinding:
    prefix: --comparison
- id: in_score_labels
  doc: "Names of the scores to be displayed on the plots. It\nmust be provided as\
    \ text seperated by semi-colons,\ni.e. 'Score A;Score B;Score C'."
  type: string
  inputBinding:
    prefix: --scoreLabels
- id: in_region_labels
  doc: "Names of the regions to be displayed on the plots. It\nmust be provided as\
    \ text seperated by semi-colons,\ni.e. 'Regions A; Regions B; Regions C'."
  type: string
  inputBinding:
    prefix: --regionLabels
- id: in_signal_name
  doc: "Name given to the signal, for instance 'H3K4me3\nlog2input'. Default: 'Genomic\
    \ signal'"
  type: long
  inputBinding:
    prefix: --signalName
- id: in_bootstraps
  doc: 'Number of bootstraps to perform. Default: 1000.'
  type: long
  inputBinding:
    prefix: --bootstraps
- id: in_bootstrap_sci
  doc: "Confidence intervals (CI) threshold for bootstraps.\nDefault: 0.95."
  type: double
  inputBinding:
    prefix: --bootstrapsCI
- id: in_cpu
  doc: 'Number of CPU to use. Default: 4.'
  type: long
  inputBinding:
    prefix: --CPU
- id: in_wilcox_threshold
  doc: "Threshold used to define significant bins on the\nWilcoxon rank-sum test plot.\
    \ Default: 0.05"
  type: double
  inputBinding:
    prefix: --wilcoxThreshold
- id: in_first_region_name
  doc: 'Name of the central or left region. Default: TSS'
  type: string
  inputBinding:
    prefix: --firstRegionName
- id: in_second_region_name
  doc: "Name of the right region, only used when deeptools\ncomputeMatrix ran in scaled-regions\
    \ mode. Default: TES"
  type: string
  inputBinding:
    prefix: --secondRegionName
- id: in_boot_plot_share_y
  doc: "Given TRUE or FALSE, defines if the bootstraps plots\nshould share the same\
    \ scale on the y axis or not.\nDefault: TRUE"
  type: string
  inputBinding:
    prefix: --bootPlotShareY
- id: in_boot_plot_colors
  doc: "Change the bootstraps plot color palette to a user-\nprovided one. The file\
    \ must be tab-delimited and\ncontain for each line two HTML color codes ( #3366CC\n\
    #769EF2 ). The first column corresponds to the mean\ncolor, the second column\
    \ corresponds to the color of\nthe bootstrap confidence interval shadowed area.\
    \ The\ndefault color scale contains 6 colors that are color\nblind friendly using\
    \ the dichromat R package."
  type: File
  inputBinding:
    prefix: --bootPlotColors
- id: in_boot_plot_ratio
  doc: "Changes the aspect ratio of the plot. A value < 1\nresults in a wide plot,\
    \ a value > 1 results in a\nnarrow plot. Default: 0.85."
  type: double
  inputBinding:
    prefix: --bootPlotRatio
- id: in_boot_plot_width
  doc: 'How large the bootstraps plot should be. Default: 5.2'
  type: double
  inputBinding:
    prefix: --bootPlotWidth
- id: in_boot_plot_height
  doc: 'How tall the bootstraps plot should be. Default: 3.7'
  type: double
  inputBinding:
    prefix: --bootPlotHeight
- id: in_wilcox_plot_width
  doc: "How large the Wilcoxon rank-sum test plot should be.\nDefault: 4.6"
  type: double
  inputBinding:
    prefix: --wilcoxPlotWidth
- id: in_wilcox_plot_height
  doc: "How tall the Wilcoxon rank-sum test plot should be.\nDefault: 4.6"
  type: double
  inputBinding:
    prefix: --wilcoxPlotHeight
- id: in_font
  doc: "Font used for plotting, given a TTF file. Default is\nusually Helvetica.\n"
  type: File
  inputBinding:
    prefix: --font
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- dsCompareCurves
