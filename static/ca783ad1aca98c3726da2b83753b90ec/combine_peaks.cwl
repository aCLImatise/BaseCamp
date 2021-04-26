class: CommandLineTool
id: combine_peaks.cwl
inputs:
- id: in_macs_summit_files
  doc: "[FNAME [FNAME ...]], --input [FNAME [FNAME ...]]\nMACS2 summit or narrowPeak\
    \ files"
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_genome
  doc: Genome name or genome file
  type: File?
  inputBinding:
    prefix: --genome
- id: in_window
  doc: Window size (default 200)
  type: long?
  inputBinding:
    prefix: --window
- id: in_scale
  doc: Scale summit values
  type: boolean?
  inputBinding:
    prefix: --scale
- id: in_fname
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gimmemotifs:0.15.3--py38hc37a69a_0
cwlVersion: v1.1
baseCommand:
- combine_peaks
