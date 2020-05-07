class: CommandLineTool
id: trim_low_abund.py.cwl
inputs:
- id: ignore_pairs
  doc: 'treat all reads as if they were singletons (default: False)'
  type: boolean
  inputBinding:
    prefix: --ignore-pairs
- id: tempdir
  doc: 'Set location of temporary directory for second pass (default: ./)'
  type: string
  inputBinding:
    prefix: --tempdir
- id: gzip
  doc: 'Compress output using gzip (default: False)'
  type: boolean
  inputBinding:
    prefix: --gzip
- id: bzip
  doc: 'Compress output using bzip2 (default: False)'
  type: boolean
  inputBinding:
    prefix: --bzip
- id: digi_norm
  doc: 'Eliminate high-coverage reads altogether (digital normalization). (default:
    False)'
  type: boolean
  inputBinding:
    prefix: --diginorm
- id: digi_norm_coverage
  doc: 'Coverage threshold for --diginorm (default: 20)'
  type: string
  inputBinding:
    prefix: --diginorm-coverage
- id: single_pass
  doc: 'Do not do a second pass across the low coverage data (default: False)'
  type: boolean
  inputBinding:
    prefix: --single-pass
outputs: []
cwlVersion: v1.1
baseCommand:
- trim-low-abund.py
