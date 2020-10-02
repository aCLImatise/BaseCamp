class: CommandLineTool
id: TOBIAS_ClusterMotifs.cwl
inputs:
- id: in_one_more_motif
  doc: '[ [ ...]], --motifs [ [ ...]]      One or more motif files to compare and
    cluster'
  type: boolean
  inputBinding:
    prefix: -m
- id: in__threshold_clustering
  doc: ', --threshold                      Clustering threshold (Default = 0.3)'
  type: boolean
  inputBinding:
    prefix: -t
- id: in_dist_method
  doc: "Method for calculating similarity between motifs\n(default: pcc)"
  type: boolean
  inputBinding:
    prefix: --dist_method
- id: in_clust_method
  doc: "Method for clustering (See: https://docs.scipy.org\n/doc/scipy/reference/generated/scipy.cluster.hiera\n\
    rchy.linkage.html)"
  type: boolean
  inputBinding:
    prefix: --clust_method
- id: in__consformat_format
  doc: ", --cons_format                    Format of consensus motif file [‘transfac’,\n\
    ‘meme’, ‘pwm’, 'pfm', 'jaspar'] (Default: jaspar)"
  type: boolean
  inputBinding:
    prefix: -a
- id: in__prefix_prefix
  doc: ", --prefix                         Output prefix (default: 'motif_comparison')"
  type: boolean
  inputBinding:
    prefix: -p
- id: in__outdir_output
  doc: ", --outdir                         Output directory (default: 'clustermotifs_output')"
  type: Directory
  inputBinding:
    prefix: -o
- id: in_verbosity
  doc: "Level of output logging (0: silent, 1:\nerrors/warnings, 2: info, 3: stats,\
    \ 4: debug, 5:\nspam) (default: 3)"
  type: long
  inputBinding:
    prefix: --verbosity
- id: in_type
  doc: 'Plot file type [png, pdf, jpg] (Default: pdf)'
  type: string
  inputBinding:
    prefix: --type
- id: in_dpi
  doc: 'Dpi for plots (Default: 100)'
  type: long
  inputBinding:
    prefix: --dpi
- id: in_color_palette
  doc: "Color palette (All possible paletts:\nhttps://python-graph-gallery.com/197-available-\n\
    color-palettes-with-matplotlib/. Add '_r' to\nreverse palette.)\n"
  type: long
  inputBinding:
    prefix: --color_palette
- id: in_motifs
  doc: ''
  type: string
  inputBinding:
    prefix: --motifs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out__outdir_output
  doc: ", --outdir                         Output directory (default: 'clustermotifs_output')"
  type: Directory
  outputBinding:
    glob: $(inputs.in__outdir_output)
cwlVersion: v1.1
baseCommand:
- TOBIAS
- ClusterMotifs
