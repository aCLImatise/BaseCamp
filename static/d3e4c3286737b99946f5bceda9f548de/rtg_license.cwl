class: CommandLineTool
id: rtg_license.cwl
inputs:
- id: in_format
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 0
- id: in_sdf_two_fast_a
  doc: Licensed          GA
  type: long
  inputBinding:
    position: 1
- id: in_sdf_two_fast_q
  doc: Licensed          GA
  type: long
  inputBinding:
    position: 2
- id: in_sdf_two_sam
  doc: Licensed          GA
  type: long
  inputBinding:
    position: 3
- id: in_fast_q_trim
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 4
- id: in_genome_sim
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 0
- id: in_cg_sim
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 1
- id: in_read_sim
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 2
- id: in_pop_sim
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 3
- id: in_samples_im
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 4
- id: in_child_sim
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 5
- id: in_de_novo_sim
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 6
- id: in_ped_samples_im
  doc: Licensed          beta
  type: string
  inputBinding:
    position: 7
- id: in_sample_replay
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 8
- id: in_b_gzip
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 0
- id: in_index
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 1
- id: in_extract
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 2
- id: in_sdf_stats
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 3
- id: in_sdf_subset
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 4
- id: in_sdf_subseq
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 5
- id: in_mendelian
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 6
- id: in_vcf_stats
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 7
- id: in_vcf_merge
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 8
- id: in_vcf_filter
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 9
- id: in_vcf_annotate
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 10
- id: in_vcf_subset
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 11
- id: in_vcf_split
  doc: Licensed          beta
  type: string
  inputBinding:
    position: 12
- id: in_vcf_decompose
  doc: Licensed          beta
  type: string
  inputBinding:
    position: 13
- id: in_vcf_eval
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 14
- id: in_sv_decompose
  doc: Licensed          beta
  type: string
  inputBinding:
    position: 15
- id: in_bnd_eval
  doc: Licensed          beta
  type: string
  inputBinding:
    position: 16
- id: in_ped_filter
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 17
- id: in_ped_stats
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 18
- id: in_roc_plot
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 19
- id: in_version
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 20
- id: in_license
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 21
- id: in_help
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 22
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rtg
- license
