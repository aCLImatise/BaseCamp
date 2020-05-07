class: CommandLineTool
id: sga_rmdup.cwl
inputs:
- id: verbose
  doc: display verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: out
  doc: 'write the output to FILE (default: READFILE.rmdup.fa)'
  type: File
  inputBinding:
    prefix: --out
- id: prefix
  doc: use PREFIX instead of the prefix of the reads filename for the input/output
    files
  type: string
  inputBinding:
    prefix: --prefix
- id: error_rate
  doc: 'the maximum error rate allowed to consider two sequences identical (default:
    exact matches required)'
  type: boolean
  inputBinding:
    prefix: --error-rate
- id: threads
  doc: 'use N threads (default: 1)'
  type: string
  inputBinding:
    prefix: --threads
- id: sample_rate
  doc: 'sample the symbol counts every N symbols in the FM-index. Higher values use
    significantly less memory at the cost of higher runtime. This value must be a
    power of 2 (default: 256)'
  type: string
  inputBinding:
    prefix: --sample-rate
outputs: []
cwlVersion: v1.1
baseCommand:
- sga
- rmdup
