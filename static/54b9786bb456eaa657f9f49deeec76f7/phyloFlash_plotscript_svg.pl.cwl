class: CommandLineTool
id: phyloFlash_plotscript_svg.pl.cwl
inputs:
- id: in_tree
  doc: "Phylogenetic tree plot from Newick-formatted tree. Does\nnot support node\
    \ or branch labels, branch lengths\nrequired. Tree is oriented with root on left\
    \ and leaf\nlabels on right. Height of plot scales with number of\nleaves.\nCan\
    \ be modified with -treefasta, -assemcov, and\n-unassemcount"
  type: File?
  inputBinding:
    prefix: -tree
- id: in_tree_fast_a
  doc: "Original Fasta file used to produce the tree, if the tree\nis a guide tree\
    \ from MAFFT aligner. This is used to\nrelabel the text labels in the SVG with\
    \ the original\ntext, because MAFFT automatically replaces spaces and\nother punctuation\
    \ with underscores, and truncates the\nnames."
  type: File?
  inputBinding:
    prefix: -treefasta
- id: in_assem_cov
  doc: "CSV file containing coverage stats of assembled SSU\nsequences, from phyloFlash\
    \ output, for drawing bubbles\nrepresenting read coverage per assembled sequence\
    \ on the\ntree.\nWhen supplied, beneath the node for each leaf\nrepresenting an\
    \ assembled SSU sequence will be a circle\nwhose area represents the abundance\
    \ of that sequence\n(i.e. number of reads mapping to it in the re-mapping\nstep)\
    \ in the read library."
  type: File?
  inputBinding:
    prefix: -assemcov
- id: in_un_assem_count
  doc: "Number of reads that are not mapping to any of the\nassembled SSU sequences.\
    \ This is to draw a bubble\nrepresenting coverage of unassembled reads, when coverage\n\
    of assembled sequences is also supplied via -assemcov\nparameter."
  type: long?
  inputBinding:
    prefix: -unassemcount
- id: in_hist
  doc: "Histogram plot from TAB-separated histogram output file,\ne.g. those produced\
    \ by BBmap. Column 1: bin values,\ncolumn 2: counts/frequencies. The counts must\
    \ already be\nbinned into counts or frequencies! The counts can be\nre-binned\
    \ into new bins for plotting, but the user is\nresponsible for making sure that\
    \ the number of new bins <\nnumber of original bins."
  type: File?
  inputBinding:
    prefix: -hist
- id: in_bar
  doc: "Interactive bar plot from CSV file. Column 1: label,\ncolumn 2: counts. The\
    \ text labels are adjacent to the\nbars and their size and opacity are scaled\
    \ to the bar\nheight to avoid overlapping text labels. However on\nmouseover (when\
    \ viewed in web browser) the box will be\nhighlighted and the corresponding text\
    \ label will enlarge\nto legible size."
  type: File?
  inputBinding:
    prefix: -bar
- id: in_pie
  doc: "Pie chart from CSV file. Column 1: Label, column 2:\ncounts/percentage/ratio.\
    \ Will automatically take total of\nthe numbers provided. I.e. if using percentages,\
    \ ensure\nthat they add up to 100%."
  type: File?
  inputBinding:
    prefix: -pie
- id: in_pipe
  doc: "TYPE\nUse \"pipe\" mode. Input is read from STDIN and written to\nSTDOUT.\
    \ Use this option to specify type of plot to\nproduce: \"tree\", \"hist\", \"\
    bar\", or \"pie\". Naturally this\ncan only read and write one file at a time."
  type: File?
  inputBinding:
    prefix: -pipe
- id: in_title
  doc: "=\"STRING\"\nOptional title for plot. Enclose string in quotation\nmarks if\
    \ title has spaces. Default: (empty)"
  type: boolean?
  inputBinding:
    prefix: -title
- id: in_height
  doc: "Optional width and height of plot in pixels. Defaults:\nBuilt-in defaults\
    \ for each plot type."
  type: long?
  inputBinding:
    prefix: -height
- id: in_color
  doc: "=\"STRING\"\nOptional fill color for plot. Currently implemented only\nfor\
    \ histogram. Default: Built-in defaults for each plot\ntype"
  type: boolean?
  inputBinding:
    prefix: -color
- id: in_breakpoints
  doc: "Specify number of breakpoints in histogram. Default:\nSturges algorithm to\
    \ calculate optimal breakpoints"
  type: long?
  inputBinding:
    prefix: -breakpoints
- id: in_decimal_comma
  doc: "Use comma as decimal separator (only used for histogram\ninput). BBMap is\
    \ locale- aware and uses decimal comma in\ncertain locales (e.g. Germany and France).\
    \ However, Perl\ndoes not unless explicitly requested. This option will\nreplace\
    \ decimal commas with decimal periods in histogram\ninput files only."
  type: boolean?
  inputBinding:
    prefix: -decimalcomma
- id: in_man
  doc: Manual page (identical to this help message)
  type: boolean?
  inputBinding:
    prefix: -man
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- phyloFlash_plotscript_svg.pl
