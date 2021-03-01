class: CommandLineTool
id: tally_variants_from_multiple_vcfs.py.cwl
inputs:
- id: in_vcf_files
  doc: 'multiple vcf files (default: None)'
  type: string[]
  inputBinding:
    prefix: --vcf-files
- id: in_bam_files
  doc: 'multiple bam files (default: None)'
  type: string[]
  inputBinding:
    prefix: --bam-files
- id: in_sample_names
  doc: 'names for the vcf files (default: None)'
  type: string[]
  inputBinding:
    prefix: --sample-names
- id: in_filter_labels
  doc: "Filter labels to count (default: ['PASS'])"
  type: string[]
  inputBinding:
    prefix: --filter-labels
- id: in_bed_inclusion
  doc: 'Bed file to include. (default: None)'
  type: File?
  inputBinding:
    prefix: --bed-inclusion
- id: in_num_threads
  doc: 'threads (default: 1)'
  type: long?
  inputBinding:
    prefix: --num-threads
- id: in_minimum_samples
  doc: "Print out only if at least this number of vcf files\nhave the variant. (default:\
    \ 1)\n"
  type: long?
  inputBinding:
    prefix: --minimum-samples
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tally_variants_from_multiple_vcfs.py
