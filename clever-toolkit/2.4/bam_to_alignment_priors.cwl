class: CommandLineTool
id: ../../../bam_to_alignment_priors.cwl
inputs:
- id: skip_reads_exist
  doc: '[ --dont_skip_non_xa ]             Do not skip reads for which other  alignments
    exist (i.e. X0+X1>1, but no  XA tag is present).'
  type: boolean
  inputBinding:
    prefix: -x
- id: ignore_x_a
  doc: Do not use alternative alignments from  XA tags.
  type: boolean
  inputBinding:
    prefix: --ignore_xa
- id: use_mapq
  doc: Use MAPQ instead of recomputing  probability from all alignments.
  type: boolean
  inputBinding:
    prefix: --use_mapq
- id: arg_value_substract
  doc: '[ --phred_base ] arg (=33)         Value to substract from ASCII code to  get
    the PHRED quality.'
  type: boolean
  inputBinding:
    prefix: -p
- id: arg_issue_warning
  doc: '[ --bad_alignment_threshold ] arg (=1000) Issue a warning when AS tag is above  this
    value.'
  type: boolean
  inputBinding:
    prefix: -b
- id: arg_maximal_segment
  doc: '[ --max_span ] arg (=50000)        Maximal internal segment. Read pairs  with
    larger internal segment will be  ignored.'
  type: boolean
  inputBinding:
    prefix: -s
- id: arg_discard_alignments
  doc: '[ --discard_reads ] arg (=0)       Discard "concordant" alignments within  the
    given number of standard deviations (default: disabled).'
  type: boolean
  inputBinding:
    prefix: -d
- id: arg_filename_known
  doc: '[ --insert_size_dist ] arg         Filename of known internal segment size
    distribution. If not given, this  distribution is estimated.'
  type: boolean
  inputBinding:
    prefix: -i
- id: arg_filename_distribution
  doc: '[ --insert_size_dist_out ] arg     Filename of write estimated internal  segment
    size distribution to.'
  type: boolean
  inputBinding:
    prefix: -I
- id: arg_filename_readgroupwise
  doc: '[ --rg_insert_size_dist ] arg      Filename of read-group-wise known  internal
    segment size distributions.  Expects two-column text file:  <readgroup> <distribution-filename>.'
  type: boolean
  inputBinding:
    prefix: -r
- id: arg_number_uniquely
  doc: '[ --dist_est_count ] arg (=5000000) Number of uniquely mapping reads that  are
    to be used to estimate internal  segment size distribution.'
  type: boolean
  inputBinding:
    prefix: -n
- id: arg_write_deviation
  doc: '[ --mean_and_sd ] arg              Write (robustly estimated) mean and  standard
    deviation of main peak if  internal segment size distribution to  given filename.'
  type: boolean
  inputBinding:
    prefix: -m
- id: arg_number_default
  doc: '[ --threads ] arg (=0)             Number of threads (default: 0 =  strictly
    single-threaded).'
  type: boolean
  inputBinding:
    prefix: -T
- id: unsorted
  doc: Don't assume reads to be sorted by  position. In this case, alignments must
    be grouped by read, i.e. alignments of  the same read (pair) must be in  subsequent
    lines.
  type: boolean
  inputBinding:
    prefix: --unsorted
- id: chromosome
  doc: 'Chromosome to process (default: all).'
  type: string
  inputBinding:
    prefix: --chromosome
outputs: []
cwlVersion: v1.1
baseCommand:
- bam-to-alignment-priors
