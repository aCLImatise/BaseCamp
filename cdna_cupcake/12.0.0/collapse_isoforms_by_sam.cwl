class: CommandLineTool
id: collapse_isoforms_by_sam.py.cwl
inputs:
- id: input
  doc: Input FA/FQ filename
  type: string
  inputBinding:
    prefix: --input
- id: fq
  doc: Input is a fastq file (default is fasta)
  type: boolean
  inputBinding:
    prefix: --fq
- id: sam
  doc: Sorted GMAP SAM filename
  type: string
  inputBinding:
    prefix: --sam
- id: prefix
  doc: Output filename prefix
  type: string
  inputBinding:
    prefix: --prefix
- id: min_coverage
  doc: 'Minimum alignment coverage (default: 0.99)'
  type: long
  inputBinding:
    prefix: --min-coverage
- id: min_identity
  doc: 'Minimum alignment identity (default: 0.95)'
  type: long
  inputBinding:
    prefix: --min-identity
- id: max_fuzzy_junction
  doc: 'Max fuzzy junction dist (default: 5 bp)'
  type: long
  inputBinding:
    prefix: --max_fuzzy_junction
- id: max_5_diff
  doc: "Maximum allowed 5' difference if on same exon (default: 1000 bp)"
  type: long
  inputBinding:
    prefix: --max_5_diff
- id: max_3_diff
  doc: "Maximum allowed 3' difference if on same exon (default: 100 bp)"
  type: long
  inputBinding:
    prefix: --max_3_diff
- id: fl_nc_coverage
  doc: 'Minimum # of FLNC reads, only use this for aligned FLNC reads, otherwise results
    undefined!'
  type: string
  inputBinding:
    prefix: --flnc_coverage
- id: dun_merge_5_shorter
  doc: "Don't collapse shorter 5' transcripts (default: turned off)"
  type: boolean
  inputBinding:
    prefix: --dun-merge-5-shorter
outputs: []
cwlVersion: v1.1
baseCommand:
- collapse_isoforms_by_sam.py
