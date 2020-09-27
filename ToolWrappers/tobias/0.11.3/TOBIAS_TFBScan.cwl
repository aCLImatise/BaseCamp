class: CommandLineTool
id: TOBIAS_TFBScan.cwl
inputs:
- id: in__motifs_file
  doc: ', --motifs         File containing motifs in either MEME, PFM or JASPAR format'
  type: boolean
  inputBinding:
    prefix: -m
- id: in__fasta_file
  doc: ', --fasta          A fasta file of sequences to use for scanning motifs'
  type: boolean
  inputBinding:
    prefix: -f
- id: in__regions_scanning
  doc: ', --regions        Subset scanning to regions of interest'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_outdir
  doc: "Output directory for TFBS sites in one file per motif (default:\n./tfbscan_output/).\
    \ NOTE: Select either --outdir or --outfile."
  type: File
  inputBinding:
    prefix: --outdir
- id: in_outfile
  doc: "Output file for TFBS sites joined in one bed-file (default: not\nset). NOTE:\
    \ Select either --outdir or --outfile."
  type: File
  inputBinding:
    prefix: --outfile
- id: in_naming
  doc: "Naming convention for bed-ids and output files ('id', 'name',\n'name_id',\
    \ 'id_name') (default: 'name_id')"
  type: boolean
  inputBinding:
    prefix: --naming
- id: in_gc
  doc: "Set the gc content for background regions (default: will be\nestimated from\
    \ fasta)"
  type: boolean
  inputBinding:
    prefix: --gc
- id: in_p_value
  doc: 'Set p-value for motif matches (default: 0.0001)'
  type: boolean
  inputBinding:
    prefix: --pvalue
- id: in_keep_overlaps
  doc: "Keep overlaps of same motifs (default: overlaps are resolved by\nkeeping best-scoring\
    \ site)"
  type: boolean
  inputBinding:
    prefix: --keep-overlaps
- id: in_add_region_columns
  doc: Add extra information columns (starting from 4th column) from
  type: boolean
  inputBinding:
    prefix: --add-region-columns
- id: in_regions
  doc: 'the output .bed-file(s) (default: off)'
  type: File
  inputBinding:
    prefix: --regions
- id: in_verbosity
  doc: "Level of output logging (0: silent, 1: errors/warnings, 2: info,\n3: stats,\
    \ 4: debug, 5: spam) (default: 3)"
  type: long
  inputBinding:
    prefix: --verbosity
- id: in_split
  doc: 'Split of multiprocessing jobs (default: 100)'
  type: long
  inputBinding:
    prefix: --split
- id: in_cores
  doc: 'Number of cores to use (default: 1)'
  type: boolean
  inputBinding:
    prefix: --cores
- id: in_fast_a
  doc: ''
  type: string
  inputBinding:
    prefix: --fasta
- id: in_motifs
  doc: ''
  type: string
  inputBinding:
    prefix: --motifs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "Output directory for TFBS sites in one file per motif (default:\n./tfbscan_output/).\
    \ NOTE: Select either --outdir or --outfile."
  type: File
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_outfile
  doc: "Output file for TFBS sites joined in one bed-file (default: not\nset). NOTE:\
    \ Select either --outdir or --outfile."
  type: File
  outputBinding:
    glob: $(inputs.in_outfile)
- id: out_regions
  doc: 'the output .bed-file(s) (default: off)'
  type: File
  outputBinding:
    glob: $(inputs.in_regions)
cwlVersion: v1.1
baseCommand:
- TOBIAS
- TFBScan
