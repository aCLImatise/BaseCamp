class: CommandLineTool
id: vtools_report_plot_association_manhattan_plain.cwl
inputs:
- id: chrom
  doc: 'Specify the particular chromosome(s) to display. Can be one or multiple in
    this list: "1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 X Y Un ?:?".
    Slicing syntax "?:?" is supported. For example "1:22" is equivalent to displaying
    all autosomes; "1:Y" is equivalent to displaying all mapped chromosomes. Default
    set to all including unmapped chromosomes.'
  type: string[]
  inputBinding:
    prefix: --chrom
- id: chrom_prefix
  doc: Prefix chromosome ID with a string. Default is set to "chr" (X-axis will be
    displayed as "chr1", "chr2", etc). Use "None" for no prefix.
  type: string
  inputBinding:
    prefix: --chrom_prefix
- id: gene_map
  doc: If the plot units are genes and the program fails to map certain genes to chromosomes,
    you can fix it by providing a text file of genomic coordinate information of these
    genes. Each gene in the file is a line of 3 columns specifying "GENENAME CHROM
    MIDPOINT_POSITION", e.g., "IKBKB 8 42128820".
  type: File
  inputBinding:
    prefix: --gene_map
- id: title
  doc: Title of plot.
  type: string
  inputBinding:
    prefix: --title
- id: color
  doc: "Choose a color theme from the list above to apply to the plot. (via the 'RColorBrewer'\
    \ package: cran.r-project.org/web/packages/RColorBrewer)"
  type: string
  inputBinding:
    prefix: --color
- id: width_height
  doc: INCHES, --width-height INCHES INCHES The width and height of the graphics region
    in inches
  type: string
  inputBinding:
    prefix: --width_height
- id: same_page
  doc: Plot multiple groups of p-values on the same graph
  type: boolean
  inputBinding:
    prefix: --same_page
- id: output
  doc: Specify output graph filename. Output is in pdf format. It can be converted
    to jpg format via the 'convert' command in Linux (e.g., convert -density 180 p.pdf
    p.jpg)
  type: File
  inputBinding:
    prefix: --output
- id: bonferroni
  doc: Plot the horizontal line at 0.05/N on Y-axis (significance level after Bonferroni
    correction)
  type: boolean
  inputBinding:
    prefix: --bonferroni
- id: h_lines
  doc: Additional horizontal line(s) to be drawn on the Y-axis.
  type: string[]
  inputBinding:
    prefix: --hlines
- id: label_top
  doc: Specify how many top hits (smallest p-values by rank) you want to highlight
    with their identifiers in text.
  type: long
  inputBinding:
    prefix: --label_top
- id: label_these
  doc: Specify the names of variants (chr:pos, e.g., 1:87463) or genes (genename,
    e.g., IKBKB) you want to highlight with their identifiers in text.
  type: string[]
  inputBinding:
    prefix: --label_these
- id: font_size
  doc: Font size of text labels. Default set to '2.5'.
  type: long
  inputBinding:
    prefix: --font_size
outputs: []
cwlVersion: v1.1
baseCommand:
- vtools_report
- plot_association
- manhattan_plain
