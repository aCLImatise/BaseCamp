class: CommandLineTool
id: nucleoatac_nfr.cwl
inputs:
- id: in_bed
  doc: Peaks in bed format
  type: File?
  inputBinding:
    prefix: --bed
- id: in_occ_track
  doc: "bgzip compressed, tabix-indexed bedgraph file with\nocccupancy track."
  type: File?
  inputBinding:
    prefix: --occ_track
- id: in_calls
  doc: bed file with nucleosome center calls
  type: File?
  inputBinding:
    prefix: --calls
- id: in_ins_track
  doc: "bgzip compressed, tabix-indexed bedgraph file with\ninsertion track. will\
    \ be generated if not included"
  type: File?
  inputBinding:
    prefix: --ins_track
- id: in_bam
  doc: Sorted (and indexed) BAM file
  type: File?
  inputBinding:
    prefix: --bam
- id: in_fast_a
  doc: Indexed fasta file
  type: File?
  inputBinding:
    prefix: --fasta
- id: in_pwm
  doc: "PWM descriptor file. Default is Human.PWM.txt included\nin package"
  type: long?
  inputBinding:
    prefix: --pwm
- id: in_cores
  doc: Number of cores to use
  type: long?
  inputBinding:
    prefix: --cores
- id: in_max_occ
  doc: Maximum mean occupancy for NFR. Default is 0.1
  type: double?
  inputBinding:
    prefix: --max_occ
- id: in_max_occ_upper
  doc: "Maximum for minimum of upper bound occupancy in NFR.\nDefault is 0.25\n"
  type: double?
  inputBinding:
    prefix: --max_occ_upper
- id: in_optional
  doc: --out out_basename    output file basename
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- nucleoatac
- nfr
