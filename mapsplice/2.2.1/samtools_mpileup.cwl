class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/samtools_mpileup.cwl
inputs:
- id: reference_sequence_file
  doc: reference sequence file [null]
  type: File
  inputBinding:
    prefix: -f
- id: region_pileup_generated
  doc: region in which pileup is generated [null]
  type: string
  inputBinding:
    prefix: -r
- id: list_positions_format
  doc: 'list of positions (format: chr pos) [null]'
  type: File
  inputBinding:
    prefix: -l
- id: cap_mapping_quality
  doc: cap mapping quality at INT [60]
  type: long
  inputBinding:
    prefix: -M
- id: min_base_quality
  doc: min base quality [13]
  type: long
  inputBinding:
    prefix: -Q
- id: filter_alignment_mq
  doc: filter out alignment with MQ smaller than INT [0]
  type: long
  inputBinding:
    prefix: -q
- id: generate_bcf_output
  doc: generate BCF output
  type: boolean
  inputBinding:
    prefix: -g
- id: compress_bcf_output
  doc: do not compress BCF output
  type: boolean
  inputBinding:
    prefix: -u
- id: disable_baq_computation
  doc: disable BAQ computation
  type: boolean
  inputBinding:
    prefix: -B
- id: in_one_dot_bam
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- samtools
- mpileup
