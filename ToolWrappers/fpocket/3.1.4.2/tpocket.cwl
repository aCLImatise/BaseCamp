class: CommandLineTool
id: tpocket.cwl
inputs:
- id: in_write_global_performance
  doc: ": Write global performance to this file\nDefault name: ./stats_g.txt.    \
    \       (./stats_g.txt)"
  type: File?
  inputBinding:
    prefix: -g
- id: in_write_pocket_statistics
  doc: ": Write pocket detailed statistics to .\nthis file Default name: ./stats_p.txt\
    \  (./stats_p.txt)"
  type: File?
  inputBinding:
    prefix: -o
- id: in_distance_criteria_ways
  doc: ": Distance criteria for the 2 ways to\ndefine the actual pocket          \
    \     (4.0)"
  type: double?
  inputBinding:
    prefix: -d
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/fpocket:3.1.4.2
cwlVersion: v1.1
baseCommand:
- tpocket
