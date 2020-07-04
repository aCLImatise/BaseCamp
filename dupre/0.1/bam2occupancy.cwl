class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/bam2occupancy.cwl
inputs:
- id: name
  doc: name for this occupancy vector (prepended to occupancy vector)
  type: string
  inputBinding:
    prefix: --name
- id: hash_file
  doc: for .bam input, write sorted hash file to the given path
  type: string
  inputBinding:
    prefix: --hashfile
- id: verbose
  doc: for .bam input, output progress messages every million reads to stderr
  type: boolean
  inputBinding:
    prefix: --verbose
- id: path
  doc: input .bam file, or hash .h5 file created by a previous run
  type: File
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- bam2occupancy
