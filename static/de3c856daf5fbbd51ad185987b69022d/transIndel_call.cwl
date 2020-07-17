class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/transIndel_call.py.cwl
inputs:
- id: reference_genome_used
  doc: :reference genome used for VCF REF column (required for valid VCF)
  type: boolean
  inputBinding:
    prefix: -r
- id: minimal_observation_count
  doc: :minimal observation count for Indel (default 4)
  type: boolean
  inputBinding:
    prefix: -c
- id: minimal_depth_call
  doc: :minimal depth to call Indel (default 10)
  type: boolean
  inputBinding:
    prefix: -d
- id: minimal_variant_allele
  doc: :minimal variant allele frequency (default 0.1)
  type: boolean
  inputBinding:
    prefix: -f
- id: minimal_indel_length
  doc: :minimal indel length to report (default 10)
  type: boolean
  inputBinding:
    prefix: -l
- id: minimal_mapq_call
  doc: :minimal mapq of read from BAM file to call indel (default 15)
  type: boolean
  inputBinding:
    prefix: -m
- id: limit_analysis_targets
  doc: :Limit analysis to targets listed in the BED-format FILE or a samtools region
    string
  type: boolean
  inputBinding:
    prefix: -t
- id: i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
- id: o
  doc: ''
  type: string
  inputBinding:
    prefix: -o
- id: opts
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- transIndel_call.py
