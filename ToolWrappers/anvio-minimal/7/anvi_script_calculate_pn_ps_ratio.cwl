class: CommandLineTool
id: anvi_script_calculate_pn_ps_ratio.cwl
inputs:
- id: in_engine
  doc: and the output filename.
  type: File?
  inputBinding:
    prefix: --engine
- id: in_sa_av_table
  doc: 'Filepath to the SAAV table. (default: None)'
  type: File?
  inputBinding:
    prefix: --saav-table
- id: in_scv_table
  doc: 'Filepath to the SCV table. (default: None)'
  type: File?
  inputBinding:
    prefix: --scv-table
- id: in_contigs_db
  doc: "Filepath to the contigs database used to generate\nvariability tables. (default:\
    \ None)"
  type: File?
  inputBinding:
    prefix: --contigs-db
- id: in_min_departure_from_consensus
  doc: "Variants (either SCVs or SAAVs) will be ignored if\nthey have a departure\
    \ from consensus less than this\nvalue. Note: Keep in mind you may have already\n\
    supplied this parameter during anvi-gen-variability-\nprofile. The default value\
    \ is 0.10."
  type: double?
  inputBinding:
    prefix: --min-departure-from-consensus
- id: in_minimum_num_variants
  doc: "Ignore genes with less than this number of single\ncodon variants. This avoids\
    \ being impressed by pN/pS\nvalues of infinite, when in reality the gene had a\n\
    single SAAV and no synonymous SCVs. The default is 4\nto ensure a default value\
    \ with some level of\nstatistical importance."
  type: long?
  inputBinding:
    prefix: --minimum-num-variants
- id: in_min_coverage
  doc: "If the coverage value at a codon is less than this\namount, any SAAVs or SCVs\
    \ associated with it will be\nignored. The default is 30."
  type: long?
  inputBinding:
    prefix: --min-coverage
- id: in_output_dir
  doc: 'Directory path for output files (default: None)'
  type: File?
  inputBinding:
    prefix: --output-dir
- id: in_no_gene
  doc: "Normally, a value is provided for each sample-gene\ncombination. So if you\
    \ have 10 genes and 100 samples,\nyou would get 10*100=1000 separate values. If\
    \ this\nflag is provided, the output is not subdivided on a\nper-gene basis, and\
    \ instead you will get 1 aggregated\nvalue for each sample. (default: False)"
  type: boolean?
  inputBinding:
    prefix: --no-gene
- id: in_pn_ps_data
  doc: '🍺 More on `anvi-script-calculate-pn-ps-ratio`:'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_engine
  doc: and the output filename.
  type: File?
  outputBinding:
    glob: $(inputs.in_engine)
- id: out_output_dir
  doc: 'Directory path for output files (default: None)'
  type: File?
  outputBinding:
    glob: $(inputs.in_output_dir)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/anvio-minimal:7--py_0
cwlVersion: v1.1
baseCommand:
- anvi-script-calculate-pn-ps-ratio
