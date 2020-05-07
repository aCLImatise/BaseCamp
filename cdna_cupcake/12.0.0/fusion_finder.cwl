class: CommandLineTool
id: fusion_finder.py.cwl
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
- id: cluster_report_csv
  doc: cluster_report.csv, optional, if given will generate count info.
  type: string
  inputBinding:
    prefix: --cluster_report_csv
- id: dun_merge_5_shorter
  doc: "Don't collapse shorter 5' transcripts (default: turned off)"
  type: boolean
  inputBinding:
    prefix: --dun-merge-5-shorter
- id: min_locus_coverage
  doc: 'Minimum per-locus coverage in percentage (default: 0.05)'
  type: long
  inputBinding:
    prefix: --min_locus_coverage
- id: min_locus_coverage_bp
  doc: 'Minimum per-locus coverage in bp (default: 1 bp)'
  type: long
  inputBinding:
    prefix: --min_locus_coverage_bp
- id: min_total_coverage
  doc: 'Minimum total coverage (default: 0.99)'
  type: long
  inputBinding:
    prefix: --min_total_coverage
- id: min_dist_between_loci
  doc: 'Minimum distance between loci, in bp (default: 10000)'
  type: long
  inputBinding:
    prefix: --min_dist_between_loci
outputs: []
cwlVersion: v1.1
baseCommand:
- fusion_finder.py
