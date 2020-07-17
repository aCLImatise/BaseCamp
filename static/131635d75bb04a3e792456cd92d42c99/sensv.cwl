class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/sensv.cwl
inputs:
- id: sample_name
  doc: sample name
  type: string
  inputBinding:
    prefix: --sample_name
- id: fast_q_file
  doc: fastq file
  type: string
  inputBinding:
    prefix: --fastq_file
- id: output_prefix
  doc: output prefix
  type: string
  inputBinding:
    prefix: --output_prefix
- id: min_sv_size
  doc: min Sv Size
  type: long
  inputBinding:
    prefix: --min_sv_size
- id: max_sv_size
  doc: max Sv Size
  type: long
  inputBinding:
    prefix: --max_sv_size
- id: disable_dp_filter
  doc: disable DP filter
  type: string
  inputBinding:
    prefix: --disable_dp_filter
- id: disable_gen_alt_ref_bam
  doc: disable gen altref bam
  type: string
  inputBinding:
    prefix: --disable_gen_altref_bam
- id: target_sv_type
  doc: target sv type
  type: string
  inputBinding:
    prefix: --target_sv_type
- id: ref_ver
  doc: reference version (default 37)
  type: string
  inputBinding:
    prefix: --ref_ver
- id: ref
  doc: reference fasta file absolute path
  type: string
  inputBinding:
    prefix: --ref
- id: nprocs
  doc: 'max # of processes to run sensv'
  type: string
  inputBinding:
    prefix: --nprocs
outputs: []
cwlVersion: v1.1
baseCommand:
- sensv
