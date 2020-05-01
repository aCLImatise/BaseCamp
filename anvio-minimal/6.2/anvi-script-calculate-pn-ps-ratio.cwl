#!/usr/bin/env cwl-runner

baseCommand:
- anvi-script-calculate-pn-ps-ratio
class: CommandLineTool
cwlVersion: v1.0
id: anvi-script-calculate-pn-ps-ratio
inputs:
- doc: and the output filename.
  id: engine
  inputBinding:
    prefix: --engine
  type: string
- doc: Filepath to the SAAV table.
  id: sa_av_table
  inputBinding:
    prefix: --saav-table
  type: string
- doc: Filepath to the SCV table.
  id: scv_table
  inputBinding:
    prefix: --scv-table
  type: string
- doc: Filepath to the contigs database used to generate variability tables.
  id: contigs_db
  inputBinding:
    prefix: --contigs-db
  type: string
- doc: 'Variants (either SCVs or SAAVs) will be ignored if they have a departure from
    consensus less than this value. Note: Keep in mind you may have already supplied
    this parameter during anvi-gen-variability- profile. The default value is "0.10".'
  id: min_departure_from_consensus
  inputBinding:
    prefix: --min-departure-from-consensus
  type: double
- doc: Ignore genes with less than this number of single codon variants. This avoids
    being impressed by pN/pS values of infinite, when in reality the gene had a single
    SAAV and no synonymous SCVs. The default is 4 to ensure a default value with some
    level of statistical importance.
  id: minimum_num_variants
  inputBinding:
    prefix: --minimum-num-variants
  type: long
- doc: If the coverage value at a codon is less than this amount, any SAAVs or SCVs
    associated with it will be ignored. The default is 30.
  id: min_coverage
  inputBinding:
    prefix: --min-coverage
  type: long
- doc: Directory path for output files
  id: output_dir
  inputBinding:
    prefix: --output-dir
  type: string
