class: CommandLineTool
id: anvi_script_calculate_pn_ps_ratio.cwl
inputs:
- id: in_engine
  doc: and the output filename.
  type: File
  inputBinding:
    prefix: --engine
- id: in_sa_av_table
  doc: Filepath to the SAAV table.
  type: File
  inputBinding:
    prefix: --saav-table
- id: in_scv_table
  doc: Filepath to the SCV table.
  type: File
  inputBinding:
    prefix: --scv-table
- id: in_contigs_db
  doc: "Filepath to the contigs database used to generate\nvariability tables."
  type: File
  inputBinding:
    prefix: --contigs-db
- id: in_min_departure_from_consensus
  doc: "Variants (either SCVs or SAAVs) will be ignored if\nthey have a departure\
    \ from consensus less than this\nvalue. Note: Keep in mind you may have already\n\
    supplied this parameter during anvi-gen-variability-\nprofile. The default value\
    \ is \"0.10\"."
  type: double
  inputBinding:
    prefix: --min-departure-from-consensus
- id: in_minimum_num_variants
  doc: "Ignore genes with less than this number of single\ncodon variants. This avoids\
    \ being impressed by pN/pS\nvalues of infinite, when in reality the gene had a\n\
    single SAAV and no synonymous SCVs. The default is 4\nto ensure a default value\
    \ with some level of\nstatistical importance."
  type: long
  inputBinding:
    prefix: --minimum-num-variants
- id: in_min_coverage
  doc: "If the coverage value at a codon is less than this\namount, any SAAVs or SCVs\
    \ associated with it will be\nignored. The default is 30."
  type: long
  inputBinding:
    prefix: --min-coverage
- id: in_output_dir
  doc: "Directory path for output files\n"
  type: File
  inputBinding:
    prefix: --output-dir
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_engine
  doc: and the output filename.
  type: File
  outputBinding:
    glob: $(inputs.in_engine)
- id: out_output_dir
  doc: "Directory path for output files\n"
  type: File
  outputBinding:
    glob: $(inputs.in_output_dir)
cwlVersion: v1.1
baseCommand:
- anvi-script-calculate-pn-ps-ratio
