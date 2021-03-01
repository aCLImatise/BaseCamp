class: CommandLineTool
id: vtools_report_plot_association_manhattan_plain.cwl
inputs:
- id: in_chrom
  doc: "Specify the particular chromosome(s) to display. Can\nbe one or multiple in\
    \ this list: \"1 2 3 4 5 6 7 8 9 10\n11 12 13 14 15 16 17 18 19 20 21 22 X Y Un\
    \ ?:?\".\nSlicing syntax \"?:?\" is supported. For example \"1:22\"\nis equivalent\
    \ to displaying all autosomes; \"1:Y\" is\nequivalent to displaying all mapped\
    \ chromosomes.\nDefault set to all including unmapped chromosomes."
  type: string[]
  inputBinding:
    prefix: --chrom
- id: in_chrom_prefix
  doc: "Prefix chromosome ID with a string. Default is set to\n\"chr\" (X-axis will\
    \ be displayed as \"chr1\", \"chr2\",\netc). Use \"None\" for no prefix."
  type: string?
  inputBinding:
    prefix: --chrom_prefix
- id: in_gene_map
  doc: "If the plot units are genes and the program fails to\nmap certain genes to\
    \ chromosomes, you can fix it by\nproviding a text file of genomic coordinate\n\
    information of these genes. Each gene in the file is a\nline of 3 columns specifying\
    \ \"GENENAME CHROM\nMIDPOINT_POSITION\", e.g., \"IKBKB 8 42128820\"."
  type: File?
  inputBinding:
    prefix: --gene_map
- id: in_title
  doc: Title of plot.
  type: string?
  inputBinding:
    prefix: --title
- id: in_color
  doc: "Choose a color theme from the list above to apply to\nthe plot. (via the 'RColorBrewer'\
    \ package:\ncran.r-project.org/web/packages/RColorBrewer)"
  type: string?
  inputBinding:
    prefix: --color
- id: in_width_height
  doc: "INCHES, --width-height INCHES INCHES\nThe width and height of the graphics\
    \ region in inches"
  type: string?
  inputBinding:
    prefix: --width_height
- id: in_same_page
  doc: Plot multiple groups of p-values on the same graph
  type: boolean?
  inputBinding:
    prefix: --same_page
- id: in_output
  doc: "Specify output graph filename. Output is in pdf\nformat. It can be converted\
    \ to jpg format via the\n'convert' command in Linux (e.g., convert -density 180\n\
    p.pdf p.jpg)"
  type: File?
  inputBinding:
    prefix: --output
- id: in_bonferroni
  doc: "Plot the horizontal line at 0.05/N on Y-axis\n(significance level after Bonferroni\
    \ correction)"
  type: boolean?
  inputBinding:
    prefix: --bonferroni
- id: in_h_lines
  doc: "Additional horizontal line(s) to be drawn on the\nY-axis."
  type: string[]
  inputBinding:
    prefix: --hlines
- id: in_label_top
  doc: "Specify how many top hits (smallest p-values by rank)\nyou want to highlight\
    \ with their identifiers in text."
  type: long?
  inputBinding:
    prefix: --label_top
- id: in_label_these
  doc: "Specify the names of variants (chr:pos, e.g., 1:87463)\nor genes (genename,\
    \ e.g., IKBKB) you want to highlight\nwith their identifiers in text."
  type: string[]
  inputBinding:
    prefix: --label_these
- id: in_font_size
  doc: "Font size of text labels. Default set to '2.5'.\n"
  type: long?
  inputBinding:
    prefix: --font_size
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Specify output graph filename. Output is in pdf\nformat. It can be converted\
    \ to jpg format via the\n'convert' command in Linux (e.g., convert -density 180\n\
    p.pdf p.jpg)"
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- vtools_report
- plot_association
- manhattan_plain
