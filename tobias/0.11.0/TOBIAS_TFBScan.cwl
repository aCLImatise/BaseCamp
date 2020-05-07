class: CommandLineTool
id: TOBIAS_TFBScan.cwl
inputs:
- id: m
  doc: ', --motifs         File containing motifs in either MEME, PFM or JASPAR format'
  type: boolean
  inputBinding:
    prefix: -m
- id: f
  doc: ', --fasta          A fasta file of sequences to use for scanning motifs'
  type: boolean
  inputBinding:
    prefix: -f
- id: r
  doc: ', --regions        Subset scanning to regions of interest'
  type: boolean
  inputBinding:
    prefix: -r
- id: outdir
  doc: 'Output directory for TFBS sites in one file per motif (default: ./tfbscan_output/).
    NOTE: Select either --outdir or --outfile.'
  type: boolean
  inputBinding:
    prefix: --outdir
- id: outfile
  doc: 'Output file for TFBS sites joined in one bed-file (default: not set). NOTE:
    Select either --outdir or --outfile.'
  type: boolean
  inputBinding:
    prefix: --outfile
- id: naming
  doc: "Naming convention for bed-ids and output files ('id', 'name', 'name_id', 'id_name')\
    \ (default: 'name_id')"
  type: boolean
  inputBinding:
    prefix: --naming
- id: gc
  doc: 'Set the gc content for background regions (default: will be estimated from
    fasta)'
  type: boolean
  inputBinding:
    prefix: --gc
- id: p_value
  doc: 'Set p-value for motif matches (default: 0.0001)'
  type: boolean
  inputBinding:
    prefix: --pvalue
- id: keep_overlaps
  doc: 'Keep overlaps of same motifs (default: overlaps are resolved by keeping best-scoring
    site)'
  type: boolean
  inputBinding:
    prefix: --keep-overlaps
- id: add_region_columns
  doc: 'Add extra information columns (starting from 4th column) from --regions to
    the output .bed-file(s) (default: off)'
  type: boolean
  inputBinding:
    prefix: --add-region-columns
- id: verbosity
  doc: 'Level of output logging (0: silent, 1: errors/warnings, 2: info, 3: stats,
    4: debug, 5: spam) (default: 3)'
  type: long
  inputBinding:
    prefix: --verbosity
- id: split
  doc: 'Split of multiprocessing jobs (default: 100)'
  type: long
  inputBinding:
    prefix: --split
- id: cores
  doc: 'Number of cores to use (default: 1)'
  type: boolean
  inputBinding:
    prefix: --cores
outputs: []
cwlVersion: v1.1
baseCommand:
- TOBIAS
- TFBScan
