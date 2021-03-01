class: CommandLineTool
id: sga_rmdup.cwl
inputs:
- id: in_verbose
  doc: display verbose output
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_out
  doc: 'write the output to FILE (default: READFILE.rmdup.fa)'
  type: File?
  inputBinding:
    prefix: --out
- id: in_prefix
  doc: use PREFIX instead of the prefix of the reads filename for the input/output
    files
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_error_rate
  doc: 'the maximum error rate allowed to consider two sequences identical (default:
    exact matches required)'
  type: boolean?
  inputBinding:
    prefix: --error-rate
- id: in_threads
  doc: 'use N threads (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_sample_rate
  doc: "sample the symbol counts every N symbols in the FM-index. Higher values use\
    \ significantly\nless memory at the cost of higher runtime. This value must be\
    \ a power of 2 (default: 256)"
  type: long?
  inputBinding:
    prefix: --sample-rate
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: 'write the output to FILE (default: READFILE.rmdup.fa)'
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints: []
cwlVersion: v1.1
baseCommand:
- sga
- rmdup
