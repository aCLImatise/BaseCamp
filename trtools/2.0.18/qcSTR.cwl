class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/qcSTR.cwl
inputs:
- id: vcf
  doc: VCF file to analyze.
  type: string
  inputBinding:
    prefix: --vcf
- id: out
  doc: Output prefix for files generated
  type: string
  inputBinding:
    prefix: --out
- id: vcf_type
  doc: Options=['gangstr', 'advntr', 'hipstr', 'eh', 'popstr']
  type: string
  inputBinding:
    prefix: --vcftype
- id: samples
  doc: File containing list of samples to include
  type: string
  inputBinding:
    prefix: --samples
- id: period
  doc: Only consider repeats with this motif length
  type: string
  inputBinding:
    prefix: --period
- id: num_records
  doc: Only process this many records
  type: string
  inputBinding:
    prefix: --numrecords
- id: tool
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: var_7
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: generating
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: various
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: qc
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: plots
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: var_12
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: tr
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: call_sets
  doc: ''
  type: string
  inputBinding:
    position: 8
outputs: []
cwlVersion: v1.1
baseCommand:
- qcSTR
