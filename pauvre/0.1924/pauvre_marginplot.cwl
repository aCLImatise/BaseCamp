class: CommandLineTool
id: pauvre_marginplot.cwl
inputs:
- id: quiet
  doc: Do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: dpi
  doc: Change the dpi from the default 600 if you need it higher
  type: string
  inputBinding:
    prefix: --dpi
- id: fast_q
  doc: The input FASTQ file.
  type: string
  inputBinding:
    prefix: --fastq
- id: file_form
  doc: Which output format would you like? Def.=png
  type: string[]
  inputBinding:
    prefix: --fileform
- id: filt_maxlen
  doc: This sets the max read length filter reads.
  type: string
  inputBinding:
    prefix: --filt_maxlen
- id: filt_max_qual
  doc: This sets the max mean read quality to filter reads.
  type: string
  inputBinding:
    prefix: --filt_maxqual
- id: filt_min_len
  doc: This sets the min read length to filter reads.
  type: string
  inputBinding:
    prefix: --filt_minlen
- id: filt_min_qual
  doc: This sets the min mean read quality to filter reads.
  type: string
  inputBinding:
    prefix: --filt_minqual
- id: km_erdf
  doc: "Pass the filename of a data matrix if you would like to plot read length versus\
    \ number of kmers in that read. The data matrix is a tab-separated text file with\
    \ columns \"id length numks and kmers\", where: <id> = read id <length> = the\
    \ length of the read <numks> = the number of canonical kmers in the read <kmers>\
    \ = a list representation of kmers ie ['GAT', 'GTA']"
  type: string
  inputBinding:
    prefix: --kmerdf
- id: no_transparent
  doc: Specify this option if you don't want a transparent background. Default is
    on.
  type: boolean
  inputBinding:
    prefix: --no_transparent
- id: no_timestamp
  doc: Turn off time stamps in the filename output.
  type: boolean
  inputBinding:
    prefix: --no_timestamp
- id: output_base_name
  doc: Specify a base name for the output file(s). The input file base name is the
    default.
  type: string
  inputBinding:
    prefix: --output_base_name
- id: plot_maxlen
  doc: Sets the maximum viewing area in the length dimension.
  type: string
  inputBinding:
    prefix: --plot_maxlen
- id: plot_max_qual
  doc: Sets the maximum viewing area in the quality dimension.
  type: string
  inputBinding:
    prefix: --plot_maxqual
- id: plot_min_len
  doc: Sets the minimum viewing area in the length dimension.
  type: string
  inputBinding:
    prefix: --plot_minlen
- id: plot_min_qual
  doc: Sets the minimum viewing area in the quality dimension.
  type: string
  inputBinding:
    prefix: --plot_minqual
- id: length_bin
  doc: This sets the bin size to use for length.
  type: long
  inputBinding:
    prefix: --lengthbin
- id: qual_bin
  doc: This sets the bin size to use for quality
  type: string
  inputBinding:
    prefix: --qualbin
- id: title
  doc: This sets the title for the whole plot. Use --title "Crustacean's DNA read
    quality" if you need single quote or apostrophe inside title.
  type: string
  inputBinding:
    prefix: --title
- id: add_y_axes
  doc: Add Y-axes to both marginal histograms.
  type: boolean
  inputBinding:
    prefix: --add-yaxes
outputs: []
cwlVersion: v1.1
baseCommand:
- pauvre
- marginplot
