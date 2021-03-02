class: CommandLineTool
id: ariba_micplot.cwl
inputs:
- id: in_out_format
  doc: "Output format of image file. Use anything that\nmatplotlib can save to, eg\
    \ pdf or png [pdf]"
  type: File?
  inputBinding:
    prefix: --out_format
- id: in_main_title
  doc: "\"title in quotes\"\nMain title of plot. Default is to use the antibiotic\n\
    name"
  type: boolean?
  inputBinding:
    prefix: --main_title
- id: in_plot_height
  doc: Height of plot in inches [7]
  type: double?
  inputBinding:
    prefix: --plot_height
- id: in_plot_width
  doc: Width of plot in inches [7]
  type: double?
  inputBinding:
    prefix: --plot_width
- id: in_use_he_ts
  doc: "How to deal with HET snps. Choose from yes,no,exclude.\nyes: count a het SNP\
    \ as present. no: do not count a\nhet SNP as present. exclude: completely remove\
    \ any\nsample with any het SNP [yes]"
  type: string?
  inputBinding:
    prefix: --use_hets
- id: in_interrupted
  doc: "Include interrupted genes (as in the assembled column\nof the ariba summary\
    \ files)"
  type: boolean?
  inputBinding:
    prefix: --interrupted
- id: in_min_samples
  doc: "Minimum number of samples in each column required to\ninclude in plot [1]"
  type: long?
  inputBinding:
    prefix: --min_samples
- id: in_no_combinations
  doc: "Do not show combinations of variants. Instead separate\nout into one box/violin\
    \ plot per variant."
  type: boolean?
  inputBinding:
    prefix: --no_combinations
- id: in_panel_heights
  doc: ",height2\nTwo integers that determine relative height of top and\nbottom plots.\
    \ eg 5,1 means ratio of 5:1 between top\nand bottom panel heights [9,2]"
  type: long?
  inputBinding:
    prefix: --panel_heights
- id: in_panel_widths
  doc: ",width2\nTwo integers that determine relative width of plots\nand space used\
    \ by counts legend. eg 5,1 means ratio of\n5:1 between top and bottom panel widths.\
    \ Only applies\nwhen plotting points and --point_size 0 [5,1]"
  type: long?
  inputBinding:
    prefix: --panel_widths
- id: in_count_legend_x
  doc: "Control x position of counts legend when plotting\npoints and --point_size\
    \ 0 [-2]"
  type: double?
  inputBinding:
    prefix: --count_legend_x
- id: in_p_cut_off
  doc: p-value cutoff for Mann-Whitney tests [0.05]
  type: double?
  inputBinding:
    prefix: --p_cutoff
- id: in_xk_cd
  doc: Best used with xkcd font installed ;)
  type: boolean?
  inputBinding:
    prefix: --xkcd
- id: in_colour_map
  doc: "name\nColours to use. See\nhttp://matplotlib.org/users/colormaps.html [Accent]"
  type: string?
  inputBinding:
    prefix: --colourmap
- id: in_number_of_colours
  doc: "Number of colours in plot. 0:same number as columns in\nthe plot. 1:all black.\
    \ >1: take the first N colours\nfrom the colourmap specified by --colourmap and\
    \ cycle\nthem [0]"
  type: long?
  inputBinding:
    prefix: --number_of_colours
- id: in_colour_skip
  doc: ",FLOAT2\nIf using a continuous colourmap, --colour_skip a,b\n(where 0 <= a\
    \ < b <= 1) will skip the range between a\nand b. Useful for excluding near-white\
    \ colours"
  type: long?
  inputBinding:
    prefix: --colour_skip
- id: in_plot_types
  doc: ",type2,...\nTypes of plots to make, separated by commas. Choose\nfrom violin,point\
    \ [violin,point]"
  type: long?
  inputBinding:
    prefix: --plot_types
- id: in_h_lines
  doc: ",float2,...\nComma-separated list of positions at which to draw\nhorizontal\
    \ lines. Default is to draw no lines."
  type: long?
  inputBinding:
    prefix: --hlines
- id: in_jitter_width
  doc: Jitter width option when plotting points [0.1]
  type: double?
  inputBinding:
    prefix: --jitter_width
- id: in_log_y
  doc: "Base of log applied to y values. Set to zero to not\nlog [2]"
  type: double?
  inputBinding:
    prefix: --log_y
- id: in_point_size
  doc: "Size of points when --plot_types includes point. If\nzero, will group points\
    \ and size them proportional to\nthe group size [4]"
  type: double?
  inputBinding:
    prefix: --point_size
- id: in_point_scale
  doc: "Scale point sizes when --point_size 0. All point sizes\nare multiplied by\
    \ this number. Useful if you have\nlarge data set [1]"
  type: double?
  inputBinding:
    prefix: --point_scale
- id: in_violin_width
  doc: Width of violins [0.75]
  type: double?
  inputBinding:
    prefix: --violin_width
- id: in_dot_size
  doc: Size of dots in lower part of plot [100]
  type: double?
  inputBinding:
    prefix: --dot_size
- id: in_dot_outline
  doc: "Black outline around all dots (whether coloured or\nnot) in lower part of\
    \ plots"
  type: boolean?
  inputBinding:
    prefix: --dot_outline
- id: in_dot_y_text_size
  doc: "Text size of labels [7]\n"
  type: long?
  inputBinding:
    prefix: --dot_y_text_size
- id: in_prepare_ref_dir
  doc: Name of output directory when "ariba prepareref" was
  type: string
  inputBinding:
    position: 0
- id: in_run
  doc: antibiotic            Antibiotic name. Must exactly match a column from the
  type: string
  inputBinding:
    position: 1
- id: in_mic_file
  doc: "File containing MIC data for each sample and one or\nmore antibiotics"
  type: string
  inputBinding:
    position: 0
- id: in_summary_file
  doc: File made by running "ariba summary"
  type: string
  inputBinding:
    position: 1
- id: in_out_prefix
  doc: Prefix of output files
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_format
  doc: "Output format of image file. Use anything that\nmatplotlib can save to, eg\
    \ pdf or png [pdf]"
  type: File?
  outputBinding:
    glob: $(inputs.in_out_format)
hints: []
cwlVersion: v1.1
baseCommand:
- ariba
- micplot
