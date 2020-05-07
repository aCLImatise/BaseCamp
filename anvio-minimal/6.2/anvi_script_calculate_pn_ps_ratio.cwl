class: CommandLineTool
id: anvi_script_calculate_pn_ps_ratio.cwl
inputs:
- id: engine
  doc: and the output filename.
  type: string
  inputBinding:
    prefix: --engine
- id: sa_av_table
  doc: Filepath to the SAAV table.
  type: string
  inputBinding:
    prefix: --saav-table
- id: scv_table
  doc: Filepath to the SCV table.
  type: string
  inputBinding:
    prefix: --scv-table
- id: contigs_db
  doc: Filepath to the contigs database used to generate variability tables.
  type: string
  inputBinding:
    prefix: --contigs-db
- id: min_departure_from_consensus
  doc: 'Variants (either SCVs or SAAVs) will be ignored if they have a departure from
    consensus less than this value. Note: Keep in mind you may have already supplied
    this parameter during anvi-gen-variability- profile. The default value is "0.10".'
  type: double
  inputBinding:
    prefix: --min-departure-from-consensus
- id: minimum_num_variants
  doc: Ignore genes with less than this number of single codon variants. This avoids
    being impressed by pN/pS values of infinite, when in reality the gene had a single
    SAAV and no synonymous SCVs. The default is 4 to ensure a default value with some
    level of statistical importance.
  type: long
  inputBinding:
    prefix: --minimum-num-variants
- id: min_coverage
  doc: If the coverage value at a codon is less than this amount, any SAAVs or SCVs
    associated with it will be ignored. The default is 30.
  type: long
  inputBinding:
    prefix: --min-coverage
- id: output_dir
  doc: Directory path for output files
  type: string
  inputBinding:
    prefix: --output-dir
outputs: []
cwlVersion: v1.1
baseCommand:
- anvi-script-calculate-pn-ps-ratio
