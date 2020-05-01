#!/usr/bin/env cwl-runner

baseCommand:
- taxonomy_filter_fastq
class: CommandLineTool
cwlVersion: v1.0
id: taxonomy_filter_fastq
inputs:
- doc: Directory to deposited filtered output files in
  id: output_dir
  inputBinding:
    prefix: --output_dir
  type: boolean
- doc: Filter using report from Centrifuge
  id: centrifuge
  inputBinding:
    prefix: --centrifuge
  type: boolean
- doc: Filter using report from Kraken2
  id: kraken2
  inputBinding:
    prefix: --kraken2
  type: boolean
- doc: Name of ancestor to use as ancestor filter
  id: ancestor_taxid
  inputBinding:
    prefix: --ancestor_taxid
  type: string
- doc: Directory containing the NCBI taxonomy nodes.dmp and names.dmp files
  id: tax_dir
  inputBinding:
    prefix: --taxdir
  type: string
- doc: String to prepend to names of nodes.dmp and names.dmp
  id: tax_prefix
  inputBinding:
    prefix: --tax_prefix
  type: string
- doc: Output from Kraken2 (default) or Centrifuge
  id: tax_report_filename
  inputBinding:
    prefix: --tax_report_filename
  type: string
