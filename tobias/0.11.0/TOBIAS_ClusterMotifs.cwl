class: CommandLineTool
id: TOBIAS_ClusterMotifs.cwl
inputs:
- id: m
  doc: '[ [ ...]], --motifs [ [ ...]]      One or more motif files to compare and
    cluster'
  type: boolean
  inputBinding:
    prefix: -m
- id: t
  doc: ', --threshold                      Clustering threshold (Default = 0.3)'
  type: boolean
  inputBinding:
    prefix: -t
- id: dist_method
  doc: 'Method for calculating similarity between motifs (default: pcc)'
  type: boolean
  inputBinding:
    prefix: --dist_method
- id: clust_method
  doc: 'Method for clustering (See: https://docs.scipy.org /doc/scipy/reference/generated/scipy.cluster.hiera
    rchy.linkage.html)'
  type: boolean
  inputBinding:
    prefix: --clust_method
- id: a
  doc: ", --cons_format                    Format of consensus motif file [‘transfac’,\
    \ ‘meme’, ‘pwm’, 'pfm', 'jaspar'] (Default: jaspar)"
  type: boolean
  inputBinding:
    prefix: -a
- id: p
  doc: ", --prefix                         Output prefix (default: 'motif_comparison')"
  type: boolean
  inputBinding:
    prefix: -p
- id: o
  doc: ", --outdir                         Output directory (default: 'clustermotifs_output')"
  type: boolean
  inputBinding:
    prefix: -o
- id: verbosity
  doc: 'Level of output logging (0: silent, 1: errors/warnings, 2: info, 3: stats,
    4: debug, 5: spam) (default: 3)'
  type: long
  inputBinding:
    prefix: --verbosity
- id: type
  doc: 'Plot file type [png, pdf, jpg] (Default: pdf)'
  type: string
  inputBinding:
    prefix: --type
- id: dpi
  doc: 'Dpi for plots (Default: 100)'
  type: string
  inputBinding:
    prefix: --dpi
- id: color_palette
  doc: "Color palette (All possible paletts: https://python-graph-gallery.com/197-available-\
    \ color-palettes-with-matplotlib/. Add '_r' to reverse palette.)"
  type: string
  inputBinding:
    prefix: --color_palette
outputs: []
cwlVersion: v1.1
baseCommand:
- TOBIAS
- ClusterMotifs
