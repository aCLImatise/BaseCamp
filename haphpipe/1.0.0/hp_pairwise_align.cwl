class: CommandLineTool
id: hp_pairwise_align.cwl
inputs:
- id: amplicons_fa
  doc: Assembled amplicons (fasta)
  type: string
  inputBinding:
    prefix: --amplicons_fa
- id: ref_fa
  doc: Reference fasta file
  type: string
  inputBinding:
    prefix: --ref_fa
- id: ref_gtf
  doc: GTF format file containing amplicon regions. Primary and alternate coding regions
    should be provided in the attribute field (for amino acid alignment).
  type: string
  inputBinding:
    prefix: --ref_gtf
- id: outdir
  doc: 'Output directory (default: .)'
  type: string
  inputBinding:
    prefix: --outdir
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
- id: debug
  doc: 'Print commands but do not run (default: False)'
  type: boolean
  inputBinding:
    prefix: --debug
outputs: []
cwlVersion: v1.1
baseCommand:
- hp_pairwise_align
