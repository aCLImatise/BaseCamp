class: CommandLineTool
id: hp_vcf_to_consensus.cwl
inputs:
- id: vcf
  doc: VCF file (created with all sites).
  type: string
  inputBinding:
    prefix: --vcf
- id: outdir
  doc: 'Output directory (default: .)'
  type: string
  inputBinding:
    prefix: --outdir
- id: samp_idx
  doc: 'Index for sample if multi-sample VCF (default: 0)'
  type: string
  inputBinding:
    prefix: --sampidx
- id: min_dp
  doc: 'Minimum depth to call site (default: 5)'
  type: long
  inputBinding:
    prefix: --min_dp
- id: major
  doc: 'Allele fraction to make unambiguous call (default: 0.5)'
  type: string
  inputBinding:
    prefix: --major
- id: minor
  doc: 'Allele fraction to make ambiguous call (default: 0.2)'
  type: long
  inputBinding:
    prefix: --minor
- id: keep_tmp
  doc: 'Do not delete temporary directory (default: False)'
  type: boolean
  inputBinding:
    prefix: --keep_tmp
- id: quiet
  doc: 'Do not write output to console (silence stdout and stderr) (default: False)'
  type: boolean
  inputBinding:
    prefix: --quiet
- id: log_file
  doc: Append console output to this file
  type: string
  inputBinding:
    prefix: --logfile
outputs: []
cwlVersion: v1.1
baseCommand:
- hp_vcf_to_consensus
