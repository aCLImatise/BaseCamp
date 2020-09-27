class: CommandLineTool
id: sensv.cwl
inputs:
- id: in_sample_name
  doc: sample name
  type: string
  inputBinding:
    prefix: --sample_name
- id: in_fast_q_file
  doc: fastq file
  type: File
  inputBinding:
    prefix: --fastq_file
- id: in_output_prefix
  doc: output prefix
  type: string
  inputBinding:
    prefix: --output_prefix
- id: in_min_sv_size
  doc: min Sv Size
  type: long
  inputBinding:
    prefix: --min_sv_size
- id: in_max_sv_size
  doc: max Sv Size
  type: long
  inputBinding:
    prefix: --max_sv_size
- id: in_disable_dp_filter
  doc: disable DP filter
  type: string
  inputBinding:
    prefix: --disable_dp_filter
- id: in_disable_gen_alt_ref_bam
  doc: disable gen altref bam
  type: string
  inputBinding:
    prefix: --disable_gen_altref_bam
- id: in_target_sv_type
  doc: target sv type
  type: string
  inputBinding:
    prefix: --target_sv_type
- id: in_ref_ver
  doc: reference version (default 37)
  type: long
  inputBinding:
    prefix: --ref_ver
- id: in_ref
  doc: reference fasta file absolute path
  type: File
  inputBinding:
    prefix: --ref
- id: in_nprocs
  doc: "max # of processes to run sensv\n"
  type: long
  inputBinding:
    prefix: --nprocs
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- sensv
