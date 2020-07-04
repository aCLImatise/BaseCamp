class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bedtools_multicov.cwl
inputs:
- id: bams
  doc: The bam files.
  type: boolean
  inputBinding:
    prefix: -bams
- id: bed
  doc: The bed file.
  type: boolean
  inputBinding:
    prefix: -bed
- id: split
  doc: Treat "split" BAM or BED12 entries as distinct BED intervals.
  type: boolean
  inputBinding:
    prefix: -split
- id: require_same_strandedness
  doc: Require same strandedness.  That is, only report hits in B that overlap A on
    the _same_ strand. - By default, overlaps are reported without respect to strand.
  type: boolean
  inputBinding:
    prefix: -s
- id: require_different_strandedness
  doc: Require different strandedness.  That is, only report hits in B that overlap
    A on the _opposite_ strand. - By default, overlaps are reported without respect
    to strand.
  type: boolean
  inputBinding:
    prefix: -S
- id: minimum_overlap_required
  doc: Minimum overlap required as a fraction of each A. - Default is 1E-9 (i.e.,
    1bp). - FLOAT (e.g. 0.50)
  type: boolean
  inputBinding:
    prefix: -f
- id: require_fraction_overlap
  doc: Require that the fraction overlap be reciprocal for each A and B. - In other
    words, if -f is 0.90 and -r is used, this requires that B overlap 90% of A and
    A _also_ overlaps 90% of B.
  type: boolean
  inputBinding:
    prefix: -r
- id: minimum_mapping_quality
  doc: Minimum mapping quality allowed. Default is 0.
  type: boolean
  inputBinding:
    prefix: -q
- id: include_duplicate_reads
  doc: Include duplicate reads.  Default counts non-duplicates only
  type: boolean
  inputBinding:
    prefix: -D
- id: include_failedqc_reads
  doc: Include failed-QC reads.  Default counts pass-QC reads only
  type: boolean
  inputBinding:
    prefix: -F
- id: only_count_pairs
  doc: Only count proper pairs.  Default counts all alignments with MAPQ > -q argument,
    regardless of the BAM FLAG field.
  type: boolean
  inputBinding:
    prefix: -p
outputs: []
cwlVersion: v1.1
baseCommand:
- bedtools
- multicov
