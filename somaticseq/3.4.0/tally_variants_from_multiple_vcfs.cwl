class: CommandLineTool
id: tally_variants_from_multiple_vcfs.py.cwl
inputs:
- id: vcf_files
  doc: 'multiple vcf files (default: None)'
  type: string[]
  inputBinding:
    prefix: --vcf-files
- id: bam_files
  doc: 'multiple bam files (default: None)'
  type: string[]
  inputBinding:
    prefix: --bam-files
- id: sample_names
  doc: 'names for the vcf files (default: None)'
  type: string[]
  inputBinding:
    prefix: --sample-names
- id: filter_labels
  doc: "Filter labels to count (default: ['PASS'])"
  type: string[]
  inputBinding:
    prefix: --filter-labels
- id: bed_inclusion
  doc: 'Bed file to include. (default: None)'
  type: string
  inputBinding:
    prefix: --bed-inclusion
- id: num_threads
  doc: 'threads (default: 1)'
  type: string
  inputBinding:
    prefix: --num-threads
- id: minimum_samples
  doc: 'Print out only if at least this number of vcf files have the variant. (default:
    1)'
  type: long
  inputBinding:
    prefix: --minimum-samples
outputs: []
cwlVersion: v1.1
baseCommand:
- tally_variants_from_multiple_vcfs.py
