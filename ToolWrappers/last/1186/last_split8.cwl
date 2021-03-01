class: CommandLineTool
id: last_split8.cwl
inputs:
- id: in_format
  doc: 'output format: MAF, MAF+ (default: depends on input)'
  type: string?
  inputBinding:
    prefix: --format
- id: in_genome
  doc: lastdb genome name
  type: string?
  inputBinding:
    prefix: --genome
- id: in_direction
  doc: 'RNA direction: 0=reverse, 1=forward, 2=mixed (default=1)'
  type: long?
  inputBinding:
    prefix: --direction
- id: in_cis
  doc: cis-splice probability per base (default=0.004)
  type: double?
  inputBinding:
    prefix: --cis
- id: in_trans
  doc: trans-splice probability per base (default=1e-05)
  type: double?
  inputBinding:
    prefix: --trans
- id: in_mean
  doc: mean of ln[intron length] (default=7)
  type: long?
  inputBinding:
    prefix: --mean
- id: in_sdev
  doc: standard deviation of ln[intron length] (default=1.7)
  type: long?
  inputBinding:
    prefix: --sdev
- id: in_mis_map
  doc: maximum mismap probability (default=1)
  type: long?
  inputBinding:
    prefix: --mismap
- id: in_score
  doc: minimum alignment score (default=e OR e+t*ln[100])
  type: long?
  inputBinding:
    prefix: --score
- id: in_no_split
  doc: write original, not split, alignments
  type: boolean?
  inputBinding:
    prefix: --no-split
- id: in_bytes
  doc: maximum memory (default=8T for split, 8G for spliced)
  type: long?
  inputBinding:
    prefix: --bytes
- id: in_verbose
  doc: be verbose
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_last_alignments_dot_maf
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/last:1186--h8b12597_0
cwlVersion: v1.1
baseCommand:
- last-split8
