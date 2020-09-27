class: CommandLineTool
id: collapse_isoforms_by_sam.py.cwl
inputs:
- id: in_input
  doc: Input FA/FQ filename
  type: File
  inputBinding:
    prefix: --input
- id: in_fq
  doc: Input is a fastq file (default is fasta)
  type: boolean
  inputBinding:
    prefix: --fq
- id: in_sam
  doc: Sorted GMAP SAM filename
  type: File
  inputBinding:
    prefix: --sam
- id: in_prefix
  doc: Output filename prefix
  type: File
  inputBinding:
    prefix: --prefix
- id: in_min_coverage
  doc: 'Minimum alignment coverage (default: 0.99)'
  type: long
  inputBinding:
    prefix: --min-coverage
- id: in_min_identity
  doc: 'Minimum alignment identity (default: 0.95)'
  type: long
  inputBinding:
    prefix: --min-identity
- id: in_max_fuzzy_junction
  doc: 'Max fuzzy junction dist (default: 5 bp)'
  type: long
  inputBinding:
    prefix: --max_fuzzy_junction
- id: in_max_five_diff
  doc: "Maximum allowed 5' difference if on same exon\n(default: 1000 bp)"
  type: long
  inputBinding:
    prefix: --max_5_diff
- id: in_max_three_diff
  doc: "Maximum allowed 3' difference if on same exon\n(default: 100 bp)"
  type: long
  inputBinding:
    prefix: --max_3_diff
- id: in_fl_nc_coverage
  doc: "Minimum # of FLNC reads, only use this for aligned\nFLNC reads, otherwise\
    \ results undefined!"
  type: string
  inputBinding:
    prefix: --flnc_coverage
- id: in_dun_merge_five_shorter
  doc: "Don't collapse shorter 5' transcripts (default: turned\noff)\n"
  type: boolean
  inputBinding:
    prefix: --dun-merge-5-shorter
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: Output filename prefix
  type: File
  outputBinding:
    glob: $(inputs.in_prefix)
cwlVersion: v1.1
baseCommand:
- collapse_isoforms_by_sam.py
