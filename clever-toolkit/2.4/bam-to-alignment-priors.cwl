#!/usr/bin/env cwl-runner

baseCommand:
- bam-to-alignment-priors
class: CommandLineTool
cwlVersion: v1.0
id: bam-to-alignment-priors
inputs:
- doc: '[ --dont_skip_non_xa ]             Do not skip reads for which other  alignments
    exist (i.e. X0+X1>1, but no  XA tag is present).'
  id: x
  inputBinding:
    prefix: -x
  type: boolean
- doc: Do not use alternative alignments from  XA tags.
  id: ignore_x_a
  inputBinding:
    prefix: --ignore_xa
  type: boolean
- doc: Use MAPQ instead of recomputing  probability from all alignments.
  id: use_mapq
  inputBinding:
    prefix: --use_mapq
  type: boolean
- doc: '[ --phred_base ] arg (=33)         Value to substract from ASCII code to  get
    the PHRED quality.'
  id: p
  inputBinding:
    prefix: -p
  type: boolean
- doc: '[ --bad_alignment_threshold ] arg (=1000) Issue a warning when AS tag is above  this
    value.'
  id: b
  inputBinding:
    prefix: -b
  type: boolean
- doc: '[ --max_span ] arg (=50000)        Maximal internal segment. Read pairs  with
    larger internal segment will be  ignored.'
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: '[ --discard_reads ] arg (=0)       Discard "concordant" alignments within  the
    given number of standard deviations (default: disabled).'
  id: d
  inputBinding:
    prefix: -d
  type: boolean
- doc: '[ --insert_size_dist ] arg         Filename of known internal segment size
    distribution. If not given, this  distribution is estimated.'
  id: i
  inputBinding:
    prefix: -i
  type: boolean
- doc: '[ --insert_size_dist_out ] arg     Filename of write estimated internal  segment
    size distribution to.'
  id: i
  inputBinding:
    prefix: -I
  type: boolean
- doc: '[ --rg_insert_size_dist ] arg      Filename of read-group-wise known  internal
    segment size distributions.  Expects two-column text file:  <readgroup> <distribution-filename>.'
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: '[ --dist_est_count ] arg (=5000000) Number of uniquely mapping reads that  are
    to be used to estimate internal  segment size distribution.'
  id: n
  inputBinding:
    prefix: -n
  type: boolean
- doc: '[ --mean_and_sd ] arg              Write (robustly estimated) mean and  standard
    deviation of main peak if  internal segment size distribution to  given filename.'
  id: m
  inputBinding:
    prefix: -m
  type: boolean
- doc: '[ --threads ] arg (=0)             Number of threads (default: 0 =  strictly
    single-threaded).'
  id: t
  inputBinding:
    prefix: -T
  type: boolean
- doc: Don't assume reads to be sorted by  position. In this case, alignments must
    be grouped by read, i.e. alignments of  the same read (pair) must be in  subsequent
    lines.
  id: unsorted
  inputBinding:
    prefix: --unsorted
  type: boolean
- doc: 'Chromosome to process (default: all).'
  id: chromosome
  inputBinding:
    prefix: --chromosome
  type: string
