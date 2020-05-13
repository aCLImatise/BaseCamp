class: CommandLineTool
id: alleyoop_dedup.cwl
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
- id: tc_mutations
  doc: 'Only select reads with x number of T>C mutations. (default: 0)'
  type: string
  inputBinding:
    prefix: --tcMutations
- id: threads
  doc: 'Thread number (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- alleyoop
- dedup
