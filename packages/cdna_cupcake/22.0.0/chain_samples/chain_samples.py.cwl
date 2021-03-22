class: CommandLineTool
id: chain_samples.py.cwl
inputs:
- id: in_fuzzy_junction
  doc: "Max allowed distance in junction to be considered\nidentical (default: 0 bp)"
  type: long?
  inputBinding:
    prefix: --fuzzy_junction
- id: in_dun_merge_five_shorter
  doc: "Don't collapse shorter 5' transcripts (default: off)"
  type: boolean?
  inputBinding:
    prefix: --dun-merge-5-shorter
- id: in_max_three_diff
  doc: "Maximum 3' difference allowed (default: 30bp)"
  type: long?
  inputBinding:
    prefix: --max_3_diff
- id: in_cpus
  doc: 'Number of CPUs to use for multi-threading (default: 8)'
  type: long?
  inputBinding:
    prefix: --cpus
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
  dockerPull: quay.io/biocontainers/cdna_cupcake:22.0.0--py37h97743b1_0
cwlVersion: v1.1
baseCommand:
- chain_samples.py
