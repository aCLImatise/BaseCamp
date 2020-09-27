class: CommandLineTool
id: pauvre_marginplot.cwl
inputs:
- id: in_quiet
  doc: Do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: in_dpi
  doc: Change the dpi from the default 600 if you need it
  type: long
  inputBinding:
    prefix: --dpi
- id: in_file_form
  doc: Which output format would you like? Def.=png
  type: string[]
  inputBinding:
    prefix: --fileform
- id: in_filt_maxlen
  doc: This sets the max read length filter reads.
  type: long
  inputBinding:
    prefix: --filt_maxlen
- id: in_filt_max_qual
  doc: This sets the max mean read quality to filter reads.
  type: long
  inputBinding:
    prefix: --filt_maxqual
- id: in_filt_min_len
  doc: This sets the min read length to filter reads.
  type: long
  inputBinding:
    prefix: --filt_minlen
- id: in_filt_min_qual
  doc: This sets the min mean read quality to filter reads.
  type: long
  inputBinding:
    prefix: --filt_minqual
- id: in_km_erdf
  doc: "Pass the filename of a data matrix if you would like\nto plot read length\
    \ versus number of kmers in that\nread. The data matrix is a tab-separated text\
    \ file\nwith columns \"id length numks and kmers\", where: <id>\n= read id <length>\
    \ = the length of the read <numks> =\nthe number of canonical kmers in the read\
    \ <kmers> = a\nlist representation of kmers ie ['GAT', 'GTA']"
  type: long
  inputBinding:
    prefix: --kmerdf
- id: in_no_transparent
  doc: "Specify this option if you don't want a transparent\nbackground. Default is\
    \ on."
  type: boolean
  inputBinding:
    prefix: --no_transparent
- id: in_no_timestamp
  doc: Turn off time stamps in the filename output.
  type: File
  inputBinding:
    prefix: --no_timestamp
- id: in_output_base_name
  doc: "Specify a base name for the output file(s). The input\nfile base name is the\
    \ default."
  type: File
  inputBinding:
    prefix: --output_base_name
- id: in_plot_maxlen
  doc: Sets the maximum viewing area in the length dimension.
  type: long
  inputBinding:
    prefix: --plot_maxlen
- id: in_plot_max_qual
  doc: "Sets the maximum viewing area in the quality\ndimension."
  type: long
  inputBinding:
    prefix: --plot_maxqual
- id: in_plot_min_len
  doc: Sets the minimum viewing area in the length dimension.
  type: long
  inputBinding:
    prefix: --plot_minlen
- id: in_plot_min_qual
  doc: "Sets the minimum viewing area in the quality\ndimension."
  type: long
  inputBinding:
    prefix: --plot_minqual
- id: in_length_bin
  doc: This sets the bin size to use for length.
  type: long
  inputBinding:
    prefix: --lengthbin
- id: in_qual_bin
  doc: This sets the bin size to use for quality
  type: long
  inputBinding:
    prefix: --qualbin
- id: in_title
  doc: "This sets the title for the whole plot. Use --title\n\"Crustacean's DNA read\
    \ quality\" if you need single\nquote or apostrophe inside title."
  type: string
  inputBinding:
    prefix: --title
- id: in_add_y_axes
  doc: Add Y-axes to both marginal histograms.
  type: boolean
  inputBinding:
    prefix: --add-yaxes
- id: in_f
  doc: ''
  type: string
  inputBinding:
    prefix: -f
- id: in_higher
  doc: -f FASTQ, --fastq FASTQ
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_no_timestamp
  doc: Turn off time stamps in the filename output.
  type: File
  outputBinding:
    glob: $(inputs.in_no_timestamp)
cwlVersion: v1.1
baseCommand:
- pauvre
- marginplot
