class: CommandLineTool
id: transIndel_call.py.cwl
inputs:
- id: in_reference_genome_used
  doc: :reference genome used for VCF REF column (required for valid VCF)
  type: boolean
  inputBinding:
    prefix: -r
- id: in_minimal_observation_count
  doc: :minimal observation count for Indel (default 4)
  type: boolean
  inputBinding:
    prefix: -c
- id: in_minimal_depth_call
  doc: :minimal depth to call Indel (default 10)
  type: boolean
  inputBinding:
    prefix: -d
- id: in_minimal_variant_allele
  doc: :minimal variant allele frequency (default 0.1)
  type: boolean
  inputBinding:
    prefix: -f
- id: in_minimal_indel_length
  doc: :minimal indel length to report (default 10)
  type: boolean
  inputBinding:
    prefix: -l
- id: in_minimal_mapq_read
  doc: :minimal mapq of read from BAM file to call indel (default 15)
  type: boolean
  inputBinding:
    prefix: -m
- id: in_limit_analysis_targets
  doc: :Limit analysis to targets listed in the BED-format FILE or a samtools region
    string
  type: boolean
  inputBinding:
    prefix: -t
- id: in_o
  doc: ''
  type: File
  inputBinding:
    prefix: -o
- id: in_i
  doc: ''
  type: string
  inputBinding:
    prefix: -i
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_o
  doc: ''
  type: File
  outputBinding:
    glob: $(inputs.in_o)
cwlVersion: v1.1
baseCommand:
- transIndel_call.py
