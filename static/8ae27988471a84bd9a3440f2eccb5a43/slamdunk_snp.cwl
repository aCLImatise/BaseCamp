class: CommandLineTool
id: slamdunk_snp.cwl
inputs:
- id: bam
  doc: Bam file(s)
  type: string
  inputBinding:
    position: 0
- id: output_dir
  doc: Output directory for mapped BAM files.
  type: string
  inputBinding:
    prefix: --outputDir
- id: reference
  doc: Reference fasta file
  type: string
  inputBinding:
    prefix: --reference
- id: min_coverage
  doc: 'Minimimum coverage to call variant (default: 10)'
  type: string
  inputBinding:
    prefix: --min-coverage
- id: var_fraction
  doc: 'Minimimum variant fraction to call variant (default: 0.8)'
  type: string
  inputBinding:
    prefix: --var-fraction
- id: threads
  doc: 'Thread number (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- slamdunk
- snp
