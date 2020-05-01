#!/usr/bin/env cwl-runner

baseCommand:
- multiBamCov
class: CommandLineTool
cwlVersion: v1.0
id: multibamcov
inputs:
- doc: The bam files.
  id: bams
  inputBinding:
    prefix: -bams
  type: boolean
- doc: The bed file.
  id: bed
  inputBinding:
    prefix: -bed
  type: boolean
- doc: Treat "split" BAM or BED12 entries as distinct BED intervals.
  id: split
  inputBinding:
    prefix: -split
  type: boolean
- doc: Require same strandedness.  That is, only report hits in B that overlap A on
    the _same_ strand. - By default, overlaps are reported without respect to strand.
  id: s
  inputBinding:
    prefix: -s
  type: boolean
- doc: Require different strandedness.  That is, only report hits in B that overlap
    A on the _opposite_ strand. - By default, overlaps are reported without respect
    to strand.
  id: s
  inputBinding:
    prefix: -S
  type: boolean
- doc: Minimum overlap required as a fraction of each A. - Default is 1E-9 (i.e.,
    1bp). - FLOAT (e.g. 0.50)
  id: f
  inputBinding:
    prefix: -f
  type: boolean
- doc: Require that the fraction overlap be reciprocal for each A and B. - In other
    words, if -f is 0.90 and -r is used, this requires that B overlap 90% of A and
    A _also_ overlaps 90% of B.
  id: r
  inputBinding:
    prefix: -r
  type: boolean
- doc: Minimum mapping quality allowed. Default is 0.
  id: q
  inputBinding:
    prefix: -q
  type: boolean
- doc: Include duplicate reads.  Default counts non-duplicates only
  id: d
  inputBinding:
    prefix: -D
  type: boolean
- doc: Include failed-QC reads.  Default counts pass-QC reads only
  id: f
  inputBinding:
    prefix: -F
  type: boolean
- doc: Only count proper pairs.  Default counts all alignments with MAPQ > -q argument,
    regardless of the BAM FLAG field.
  id: p
  inputBinding:
    prefix: -p
  type: boolean
