class: CommandLineTool
id: blasr.cwl
inputs:
- id: sa
  doc: Use the suffix array 'sa' for detecting matches between the reads and the reference.  The
    suffix array has been prepared by the sawriter program.
  type: string
  inputBinding:
    prefix: -sa
- id: ctab
  doc: A table of tuple counts used to estimate match significance.  This is  by the
    program 'printTupleCountTable'.  While it is quick to generate on  the fly, if
    there are many invocations of blasr, it is useful to precompute the ctab.
  type: string
  inputBinding:
    prefix: -ctab
- id: region_table
  doc: Read in a read-region table in HDF format for masking portions of reads. This
    may be a single table if there is just one input file,  or a fofn.  When a region
    table is specified, any region table inside  the reads.plx.h5 or reads.bax.h5
    files are ignored.
  type: string
  inputBinding:
    prefix: -regionTable
- id: ignore_hq_regions
  doc: (false)Ignore any hq regions in the region table.
  type: boolean
  inputBinding:
    prefix: -ignoreHQRegions
- id: prints_am_qv
  doc: (false) Print quality values to sam files.
  type: boolean
  inputBinding:
    prefix: -printSAMQV
- id: fast_sdp
  doc: (false) Use a fast heuristic algorithm to speed up sparse dynamic programming.
  type: boolean
  inputBinding:
    prefix: -fastSDP
- id: max_score
  doc: (0) Maximum score to output (high is bad, negative good).
  type: string
  inputBinding:
    prefix: -maxScore
- id: nproc
  doc: (1) Align using N processes.  All large data structures such as the suffix
    array and  tuple count table are shared.
  type: string
  inputBinding:
    prefix: -nproc
- id: start
  doc: (0) Index of the first read to begin aligning. This is useful when multiple
    instances  are running on the same data, for example when on a multi-rack cluster.
  type: string
  inputBinding:
    prefix: -start
- id: stride
  doc: (1) Align one read every 'S' reads.
  type: string
  inputBinding:
    prefix: -stride
- id: subsample
  doc: (0) Proportion of reads to randomly subsample (expressed as a decimal) and
    align.
  type: boolean
  inputBinding:
    prefix: -subsample
outputs: []
cwlVersion: v1.1
baseCommand:
- blasr
