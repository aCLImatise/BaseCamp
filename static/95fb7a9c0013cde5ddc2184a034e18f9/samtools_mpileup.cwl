class: CommandLineTool
id: samtools_mpileup.cwl
inputs:
- id: in_reference_sequence_file
  doc: reference sequence file [null]
  type: File?
  inputBinding:
    prefix: -f
- id: in_region_pileup_generated
  doc: region in which pileup is generated [null]
  type: string?
  inputBinding:
    prefix: -r
- id: in_list_positions_chr
  doc: 'list of positions (format: chr pos) [null]'
  type: File?
  inputBinding:
    prefix: -l
- id: in_cap_mapping_quality
  doc: cap mapping quality at INT [60]
  type: long?
  inputBinding:
    prefix: -M
- id: in_min_base_quality
  doc: min base quality [13]
  type: long?
  inputBinding:
    prefix: -Q
- id: in_filter_alignment_smaller
  doc: filter out alignment with MQ smaller than INT [0]
  type: long?
  inputBinding:
    prefix: -q
- id: in_generate_bcf_output
  doc: generate BCF output
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_compress_bcf_output
  doc: do not compress BCF output
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_disable_baq_computation
  doc: disable BAQ computation
  type: boolean?
  inputBinding:
    prefix: -B
- id: in_in_one_dot_bam
  doc: ''
  type: long
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- samtools
- mpileup
