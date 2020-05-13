class: CommandLineTool
id: pauvre_synplot.cwl
inputs:
- id: gff_paths
  doc: The input filepath. for the gff annotation to plot. Individual filepaths separated
    by spaces. For example, --gff_paths sp1.gff sp2.gff sp3.gff
  type: string[]
  inputBinding:
    prefix: --gff_paths
- id: gff_labels
  doc: In case the gff names and sequence names don't match, change the labels that
    will appear over the text.
  type: string[]
  inputBinding:
    prefix: --gff_labels
- id: no_timestamp
  doc: Turn off time stamps in the filename output.
  type: boolean
  inputBinding:
    prefix: --no_timestamp
- id: optimum_order
  doc: If selected, this doesn't plot the optimum arrangement of things as they are
    input into gff_paths. Instead, it uses the first gff file as the top-most sequence
    in the plot, and reorganizes the remaining gff files to minimize the number of
    intersections.
  type: boolean
  inputBinding:
    prefix: --optimum_order
- id: output_basename
  doc: Specify a base name for the output file(s). The input file base name is the
    default.
  type: string
  inputBinding:
    prefix: --output-basename
- id: ratio
  doc: 'Enter the dimensions (arbitrary units) to plot the figure. For example a figure
    that is seven times wider than tall is: --ratio 7 1'
  type: string[]
  inputBinding:
    prefix: --ratio
- id: sandwich
  doc: Put an additional copy of the first gff file on the bottom of the plot for
    comparison.
  type: boolean
  inputBinding:
    prefix: --sandwich
- id: start_with_aligned_genes
  doc: Minimizes the number of intersections but only selects combos where the first
    gene in each sequence is aligned.
  type: boolean
  inputBinding:
    prefix: --start_with_aligned_genes
- id: stop_codons
  doc: Performs some internal corrections if the gff annotation includes the stop
    codons in the coding sequences.
  type: boolean
  inputBinding:
    prefix: --stop_codons
- id: transparent
  doc: Specify this option if you DON'T want a transparent background. Default is
    on.
  type: boolean
  inputBinding:
    prefix: --transparent
outputs: []
cwlVersion: v1.1
baseCommand:
- pauvre
- synplot
