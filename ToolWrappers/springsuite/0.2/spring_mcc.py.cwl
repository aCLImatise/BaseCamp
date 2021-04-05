class: CommandLineTool
id: spring_mcc.py.cwl
inputs:
- id: in_input
  doc: Input prediction file (2-columns).
  type: File?
  inputBinding:
    prefix: --input
- id: in_bio_grid
  doc: BioGRID interaction database file
  type: File?
  inputBinding:
    prefix: --biogrid
- id: in_locations
  doc: UniProt export table with subcellular locations
  type: string?
  inputBinding:
    prefix: --locations
- id: in_region_a
  doc: First subcellular location
  type: string?
  inputBinding:
    prefix: --region_a
- id: in_region_b
  doc: Second subcellular location
  type: string?
  inputBinding:
    prefix: --region_b
- id: in_negative
  doc: Negative set (2-columns)
  type: long?
  inputBinding:
    prefix: --negative
- id: in_throughput
  doc: Throughput (low/high)
  type: string?
  inputBinding:
    prefix: --throughput
- id: in_experiment
  doc: Experiment Title
  type: string?
  inputBinding:
    prefix: --experiment
- id: in_output
  doc: "Output (png)\n"
  type: string?
  inputBinding:
    prefix: --output
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/springsuite:0.2--pyh3252c3a_0
cwlVersion: v1.1
baseCommand:
- spring_mcc.py
