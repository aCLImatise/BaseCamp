class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/motifscan.cwl
inputs:
- id: v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
- id: command
  doc: config       Configure data paths for MotifScan. genome       Genome assembly
    commands. motif        Motif set (PFMs/PWMs) commands. scan         Scan input
    regions to detect motif occurrences.
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- motifscan
