class: CommandLineTool
id: fusion_finder.py.cwl
inputs:
- id: in_input
  doc: Input FA/FQ filename
  type: File?
  inputBinding:
    prefix: --input
- id: in_fq
  doc: Input is a fastq file (default is fasta)
  type: boolean?
  inputBinding:
    prefix: --fq
- id: in_sam
  doc: Sorted GMAP SAM filename
  type: File?
  inputBinding:
    prefix: --sam
- id: in_prefix
  doc: Output filename prefix
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_cluster_report_csv
  doc: "cluster_report.csv, optional, if given will generate\ncount info."
  type: string?
  inputBinding:
    prefix: --cluster_report_csv
- id: in_dun_merge_five_shorter
  doc: "Don't collapse shorter 5' transcripts (default: turned\noff)"
  type: boolean?
  inputBinding:
    prefix: --dun-merge-5-shorter
- id: in_min_locus_coverage
  doc: "Minimum per-locus coverage in percentage (default:\n0.05)"
  type: long?
  inputBinding:
    prefix: --min_locus_coverage
- id: in_min_locus_coverage_bp
  doc: 'Minimum per-locus coverage in bp (default: 1 bp)'
  type: long?
  inputBinding:
    prefix: --min_locus_coverage_bp
- id: in_min_total_coverage
  doc: 'Minimum total coverage (default: 0.99)'
  type: long?
  inputBinding:
    prefix: --min_total_coverage
- id: in_min_dist_between_loci
  doc: "Minimum distance between loci, in bp (default: 10000)\n"
  type: long?
  inputBinding:
    prefix: --min_dist_between_loci
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_prefix
  doc: Output filename prefix
  type: File?
  outputBinding:
    glob: $(inputs.in_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- fusion_finder.py
