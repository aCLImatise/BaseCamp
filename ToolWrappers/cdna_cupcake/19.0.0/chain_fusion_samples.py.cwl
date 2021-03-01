class: CommandLineTool
id: chain_fusion_samples.py.cwl
inputs:
- id: in_fuzzy_junction
  doc: "Max allowed distance in junction to be considered\nidentical (default: 5 bp)\n"
  type: long?
  inputBinding:
    prefix: --fuzzy_junction
- id: in_config_file
  doc: "{norm_fl,count_fl}    Which count field to use for chained sample (default:\n\
    count_fl)"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0
cwlVersion: v1.1
baseCommand:
- chain_fusion_samples.py
