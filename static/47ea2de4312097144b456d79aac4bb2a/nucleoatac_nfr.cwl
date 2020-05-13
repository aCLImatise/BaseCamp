class: CommandLineTool
id: nucleoatac_nfr.cwl
inputs:
- id: bed
  doc: Peaks in bed format
  type: string
  inputBinding:
    prefix: --bed
- id: occ_track
  doc: bgzip compressed, tabix-indexed bedgraph file with occcupancy track.
  type: string
  inputBinding:
    prefix: --occ_track
- id: calls
  doc: bed file with nucleosome center calls
  type: string
  inputBinding:
    prefix: --calls
- id: ins_track
  doc: bgzip compressed, tabix-indexed bedgraph file with insertion track. will be
    generated if not included
  type: string
  inputBinding:
    prefix: --ins_track
- id: bam
  doc: Sorted (and indexed) BAM file
  type: string
  inputBinding:
    prefix: --bam
- id: fast_a
  doc: Indexed fasta file
  type: string
  inputBinding:
    prefix: --fasta
- id: pwm
  doc: PWM descriptor file. Default is Human.PWM.txt included in package
  type: string
  inputBinding:
    prefix: --pwm
- id: out
  doc: output file basename
  type: string
  inputBinding:
    prefix: --out
- id: cores
  doc: Number of cores to use
  type: string
  inputBinding:
    prefix: --cores
- id: max_occ
  doc: Maximum mean occupancy for NFR. Default is 0.1
  type: double
  inputBinding:
    prefix: --max_occ
- id: max_occ_upper
  doc: Maximum for minimum of upper bound occupancy in NFR. Default is 0.25
  type: double
  inputBinding:
    prefix: --max_occ_upper
outputs: []
cwlVersion: v1.1
baseCommand:
- nucleoatac
- nfr
