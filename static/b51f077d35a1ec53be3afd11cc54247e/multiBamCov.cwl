class: CommandLineTool
id: multiBamCov.cwl
inputs:
- id: in_bams
  doc: The bam files.
  type: boolean?
  inputBinding:
    prefix: -bams
- id: in_bed
  doc: The bed file.
  type: boolean?
  inputBinding:
    prefix: -bed
- id: in_split
  doc: Treat "split" BAM or BED12 entries as distinct BED intervals.
  type: boolean?
  inputBinding:
    prefix: -split
- id: in_require_same_strandedness
  doc: "Require same strandedness.  That is, only report hits in B\nthat overlap A\
    \ on the _same_ strand.\n- By default, overlaps are reported without respect to\
    \ strand."
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_require_different_strandedness
  doc: "Require different strandedness.  That is, only report hits in B\nthat overlap\
    \ A on the _opposite_ strand.\n- By default, overlaps are reported without respect\
    \ to strand."
  type: boolean?
  inputBinding:
    prefix: -S
- id: in_minimum_overlap_required
  doc: "Minimum overlap required as a fraction of each A.\n- Default is 1E-9 (i.e.,\
    \ 1bp).\n- FLOAT (e.g. 0.50)"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_require_overlap_be
  doc: "Require that the fraction overlap be reciprocal for each A and B.\n- In other\
    \ words, if -f is 0.90 and -r is used, this requires\nthat B overlap 90% of A\
    \ and A _also_ overlaps 90% of B."
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_minimum_mapping_quality
  doc: Minimum mapping quality allowed. Default is 0.
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_include_duplicate_reads
  doc: Include duplicate reads.  Default counts non-duplicates only
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_include_failedqc_reads
  doc: Include failed-QC reads.  Default counts pass-QC reads only
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_only_count_pairs
  doc: "Only count proper pairs.  Default counts all alignments with\nMAPQ > -q argument,\
    \ regardless of the BAM FLAG field.\n"
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_bed_tools
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_multi_cov
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- multiBamCov
