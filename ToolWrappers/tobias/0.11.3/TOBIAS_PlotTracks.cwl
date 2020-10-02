class: CommandLineTool
id: TOBIAS_PlotTracks.cwl
inputs:
- id: in_bigwigs
  doc: "[ [ ...]]  One or more bigwigs to show. Note: All bigwigs within one \"--\n\
    bigwigs\" argument will be normalized to each other. It is possible\nto give multiple\
    \ \"--bigwigs\" arguments, which will be normalized\nindependently per group (required)"
  type: boolean
  inputBinding:
    prefix: --bigwigs
- id: in_regions
  doc: Genomic regions to plot (required)
  type: boolean
  inputBinding:
    prefix: --regions
- id: in_sites
  doc: Genomic sites to show in plot (optional)
  type: boolean
  inputBinding:
    prefix: --sites
- id: in_highlight
  doc: Regions to highlight in plot (optional)
  type: boolean
  inputBinding:
    prefix: --highlight
- id: in_gtf
  doc: GTF file containing genes to show (optional)
  type: boolean
  inputBinding:
    prefix: --gtf
- id: in_width
  doc: Width of plot in cm (default 15)
  type: boolean
  inputBinding:
    prefix: --width
- id: in_colors
  doc: '[ [ ...]]   List of specific colors to use for plotting tracks'
  type: boolean
  inputBinding:
    prefix: --colors
- id: in_labels
  doc: '[ [ ...]]   Labels for tracks (default: prefix of bigwig)'
  type: boolean
  inputBinding:
    prefix: --labels
- id: in_max_transcripts
  doc: "Set a limit on number of transcripts per gene shown in plot\n(default: 1)"
  type: boolean
  inputBinding:
    prefix: --max-transcripts
- id: in_outdir
  doc: 'Output folder (default: plottracks_output)'
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_verbosity
  doc: "Level of output logging (0: silent, 1: errors/warnings, 2: info, 3:\nstats,\
    \ 4: debug, 5: spam) (default: 3)\n"
  type: long
  inputBinding:
    prefix: --verbosity
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: 'Output folder (default: plottracks_output)'
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- TOBIAS
- PlotTracks
