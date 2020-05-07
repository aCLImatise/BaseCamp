class: CommandLineTool
id: rtg_help_license.cwl
inputs:
- id: format
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 0
- id: sdf2fasta
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 1
- id: sdf2fastq
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 2
- id: sdf2sam
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 3
- id: fast_q_trim
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 4
- id: genome_sim
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 0
- id: cg_sim
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 1
- id: read_sim
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 2
- id: pop_sim
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 3
- id: samples_im
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 4
- id: child_sim
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 5
- id: de_novo_sim
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 6
- id: ped_samples_im
  doc: Licensed          beta
  type: string
  inputBinding:
    position: 7
- id: sample_replay
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 8
- id: b_gzip
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 0
- id: index
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 1
- id: extract
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 2
- id: sdf_stats
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 3
- id: sdf_subset
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 4
- id: sdf_subseq
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 5
- id: mendelian
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 6
- id: vcf_stats
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 7
- id: vcf_merge
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 8
- id: vcf_filter
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 9
- id: vcf_annotate
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 10
- id: vcf_subset
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 11
- id: vcf_split
  doc: Licensed          beta
  type: string
  inputBinding:
    position: 12
- id: vcf_decompose
  doc: Licensed          beta
  type: string
  inputBinding:
    position: 13
- id: vcf_eval
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 14
- id: sv_decompose
  doc: Licensed          beta
  type: string
  inputBinding:
    position: 15
- id: bnd_eval
  doc: Licensed          beta
  type: string
  inputBinding:
    position: 16
- id: ped_filter
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 17
- id: ped_stats
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 18
- id: roc_plot
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 19
- id: version
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 20
- id: license
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 21
- id: help
  doc: Licensed          GA
  type: string
  inputBinding:
    position: 22
outputs: []
cwlVersion: v1.1
baseCommand:
- rtg
- help
- license
