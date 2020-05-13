class: CommandLineTool
id: purge_haplotigs.cwl
inputs:
- id: hist
  doc: First step, generate a read-depth histogram for the genome
  type: string
  inputBinding:
    position: 0
- id: cov
  doc: Second step, get contig coverage stats and flag 'suspect' contigs
  type: string
  inputBinding:
    position: 1
- id: purge
  doc: Third step, identify and reassign haplotigs
  type: string
  inputBinding:
    position: 2
- id: clip
  doc: EXPERIMENTAL; Find and clip overlapping contig ends
  type: string
  inputBinding:
    position: 0
- id: place
  doc: Generate a placement file for submission to NCBI
  type: string
  inputBinding:
    position: 1
- id: test
  doc: Test everything!
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- purge_haplotigs
