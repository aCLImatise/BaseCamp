class: CommandLineTool
id: pauvre_redwood.cwl
inputs:
- id: quiet
  doc: Do not output warnings to stderr
  type: boolean
  inputBinding:
    prefix: --quiet
- id: d
  doc: "[{main,rnaseq} ...], --doubled {main,rnaseq} [{main,rnaseq} ...] If your fasta\
    \ file was doubled to map circularly, use this flag or you may encounter plotting\
    \ errors. Accepts multiple arguments. 'main' is for the sam file passed with --sam,\
    \ 'rnaseq' is for the sam file passed with --rnaseq"
  type: string
  inputBinding:
    prefix: -d
- id: dpi
  doc: Change the dpi from the default 600 if you need it higher
  type: string
  inputBinding:
    prefix: --dpi
- id: file_form
  doc: Which output format would you like? Def.=png
  type: string[]
  inputBinding:
    prefix: --fileform
- id: gff
  doc: The input filepath for the gff annotation to plot
  type: string
  inputBinding:
    prefix: --gff
- id: interlace
  doc: Interlace the reads so the pileup plot looks better. Doesn't work currently
  type: boolean
  inputBinding:
    prefix: --interlace
- id: invert
  doc: invert the image so that it looks better on a dark background. DOESN'T DO ANYTHING.
  type: boolean
  inputBinding:
    prefix: --invert
- id: log
  doc: Plot the RNAseq track with a log scale
  type: boolean
  inputBinding:
    prefix: --log
- id: main_bam
  doc: The input filepath for the bam file to plot. Ideally was plotted with a fasta
    file that is two copies of the mitochondrial genome concatenated. This should
    be long reads (ONT, PB) and will be displayed in the interior of the redwood plot.
  type: string
  inputBinding:
    prefix: --main_bam
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
    prefix: --output-base-name
- id: query
  doc: Query your reads to change plotting options
  type: string[]
  inputBinding:
    prefix: --query
- id: rnase_q_bam
  doc: The input filepath for the rnaseq bam file to plot
  type: string
  inputBinding:
    prefix: --rnaseq_bam
- id: small_start
  doc: 'This determines where the shortest of the filtered reads will appear on the
    redwood plot: on the outside or on the inside? The default option puts the longest
    reads on the outside and the shortest reads on the inside.'
  type: string
  inputBinding:
    prefix: --small_start
- id: sort
  doc: What value to use to sort the order in which the reads are plotted?
  type: string
  inputBinding:
    prefix: --sort
- id: ticks
  doc: Specify control for the number of ticks.
  type: string[]
  inputBinding:
    prefix: --ticks
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
- redwood
