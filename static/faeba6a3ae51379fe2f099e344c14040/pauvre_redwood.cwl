class: CommandLineTool
id: pauvre_redwood.cwl
inputs:
- id: in_quiet
  doc: Do not output warnings to stderr
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_your_fasta_file
  doc: "[{main,rnaseq} ...], --doubled {main,rnaseq} [{main,rnaseq} ...]\nIf your\
    \ fasta file was doubled to map circularly, use\nthis flag or you may encounter\
    \ plotting errors.\nAccepts multiple arguments. 'main' is for the sam file\npassed\
    \ with --sam, 'rnaseq' is for the sam file passed\nwith --rnaseq"
  type: string?
  inputBinding:
    prefix: -d
- id: in_dpi
  doc: Change the dpi from the default 600 if you need it
  type: long?
  inputBinding:
    prefix: --dpi
- id: in_gff
  doc: The input filepath for the gff annotation to plot
  type: File?
  inputBinding:
    prefix: --gff
- id: in_interlace
  doc: "Interlace the reads so the pileup plot looks better.\nDoesn't work currently"
  type: boolean?
  inputBinding:
    prefix: --interlace
- id: in_invert
  doc: "invert the image so that it looks better on a dark\nbackground. DOESN'T DO\
    \ ANYTHING."
  type: boolean?
  inputBinding:
    prefix: --invert
- id: in_log
  doc: Plot the RNAseq track with a log scale
  type: boolean?
  inputBinding:
    prefix: --log
- id: in_main_bam
  doc: "The input filepath for the bam file to plot. Ideally\nwas plotted with a fasta\
    \ file that is two copies of\nthe mitochondrial genome concatenated. This should\
    \ be\nlong reads (ONT, PB) and will be displayed in the\ninterior of the redwood\
    \ plot."
  type: File?
  inputBinding:
    prefix: --main_bam
- id: in_no_timestamp
  doc: Turn off time stamps in the filename output.
  type: File?
  inputBinding:
    prefix: --no_timestamp
- id: in_output_base_name
  doc: "Specify a base name for the output file(s). The input\nfile base name is the\
    \ default."
  type: File?
  inputBinding:
    prefix: --output-base-name
- id: in_query
  doc: Query your reads to change plotting options
  type: string[]
  inputBinding:
    prefix: --query
- id: in_rnase_q_bam
  doc: The input filepath for the rnaseq bam file to plot
  type: File?
  inputBinding:
    prefix: --rnaseq_bam
- id: in_small_start
  doc: "This determines where the shortest of the filtered\nreads will appear on the\
    \ redwood plot: on the outside\nor on the inside? The default option puts the\
    \ longest\nreads on the outside and the shortest reads on the\ninside."
  type: string?
  inputBinding:
    prefix: --small_start
- id: in_sort
  doc: "What value to use to sort the order in which the reads\nare plotted?"
  type: string?
  inputBinding:
    prefix: --sort
- id: in_ticks
  doc: Specify control for the number of ticks.
  type: string[]
  inputBinding:
    prefix: --ticks
- id: in_transparent
  doc: "Specify this option if you DON'T want a transparent\nbackground. Default is\
    \ on.\n"
  type: boolean?
  inputBinding:
    prefix: --transparent
- id: in_higher
  doc: --fileform STRING [STRING ...]
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_no_timestamp
  doc: Turn off time stamps in the filename output.
  type: File?
  outputBinding:
    glob: $(inputs.in_no_timestamp)
hints: []
cwlVersion: v1.1
baseCommand:
- pauvre
- redwood
