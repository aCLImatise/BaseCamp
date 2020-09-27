class: CommandLineTool
id: bam_to_alignment_priors.cwl
inputs:
- id: in_skip_reads_exist
  doc: "[ --dont_skip_non_xa ]             Do not skip reads for which other\nalignments\
    \ exist (i.e. X0+X1>1, but no\nXA tag is present)."
  type: boolean
  inputBinding:
    prefix: -x
- id: in_ignore_x_a
  doc: "Do not use alternative alignments from\nXA tags."
  type: boolean
  inputBinding:
    prefix: --ignore_xa
- id: in_use_mapq
  doc: "Use MAPQ instead of recomputing\nprobability from all alignments."
  type: boolean
  inputBinding:
    prefix: --use_mapq
- id: in_arg_value_substract
  doc: "[ --phred_base ] arg (=33)         Value to substract from ASCII code to\n\
    get the PHRED quality."
  type: boolean
  inputBinding:
    prefix: -p
- id: in_arg_issue_warning
  doc: "[ --bad_alignment_threshold ] arg (=1000)\nIssue a warning when AS tag is\
    \ above\nthis value."
  type: boolean
  inputBinding:
    prefix: -b
- id: in_arg_maximal_segment
  doc: "[ --max_span ] arg (=50000)        Maximal internal segment. Read pairs\n\
    with larger internal segment will be\nignored."
  type: boolean
  inputBinding:
    prefix: -s
- id: in_arg_discard_alignments
  doc: "[ --discard_reads ] arg (=0)       Discard \"concordant\" alignments within\n\
    the given number of standard deviations\n(default: disabled)."
  type: boolean
  inputBinding:
    prefix: -d
- id: in_arg_filename_known
  doc: "[ --insert_size_dist ] arg         Filename of known internal segment size\n\
    distribution. If not given, this\ndistribution is estimated."
  type: boolean
  inputBinding:
    prefix: -i
- id: in_arg_filename_write
  doc: "[ --insert_size_dist_out ] arg     Filename of write estimated internal\n\
    segment size distribution to."
  type: boolean
  inputBinding:
    prefix: -I
- id: in_arg_filename_readgroupwise
  doc: "[ --rg_insert_size_dist ] arg      Filename of read-group-wise known\ninternal\
    \ segment size distributions.\nExpects two-column text file:\n<readgroup> <distribution-filename>."
  type: boolean
  inputBinding:
    prefix: -r
- id: in_arg_number_uniquely
  doc: "[ --dist_est_count ] arg (=5000000)\nNumber of uniquely mapping reads that\n\
    are to be used to estimate internal\nsegment size distribution."
  type: boolean
  inputBinding:
    prefix: -n
- id: in_arg_write_robustly
  doc: "[ --mean_and_sd ] arg              Write (robustly estimated) mean and\nstandard\
    \ deviation of main peak if\ninternal segment size distribution to\ngiven filename."
  type: boolean
  inputBinding:
    prefix: -m
- id: in_arg_number_threads
  doc: "[ --threads ] arg (=0)             Number of threads (default: 0 =\nstrictly\
    \ single-threaded)."
  type: boolean
  inputBinding:
    prefix: -T
- id: in_unsorted
  doc: "Don't assume reads to be sorted by\nposition. In this case, alignments must\n\
    be grouped by read, i.e. alignments of\nthe same read (pair) must be in\nsubsequent\
    \ lines."
  type: boolean
  inputBinding:
    prefix: --unsorted
- id: in_chromosome
  doc: 'Chromosome to process (default: all).'
  type: string
  inputBinding:
    prefix: --chromosome
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- bam-to-alignment-priors
