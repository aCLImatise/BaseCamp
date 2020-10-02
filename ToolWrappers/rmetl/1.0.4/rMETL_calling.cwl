class: CommandLineTool
id: rMETL_calling.cwl
inputs:
- id: in_homozygous
  doc: "The mininum score of a genotyping reported as a\nhomozygous.[0.8]"
  type: double
  inputBinding:
    prefix: --homozygous
- id: in_heterozygous
  doc: "The mininum score of a genotyping reported as a\nheterozygous.[0.3]"
  type: double
  inputBinding:
    prefix: --heterozygous
- id: in_min_mapq
  doc: Mininum mapping quality.[20]
  type: long
  inputBinding:
    prefix: --min_mapq
- id: in_clipping_threshold
  doc: Mininum threshold of realignment clipping.[0.5]
  type: double
  inputBinding:
    prefix: --clipping_threshold
- id: in_sample
  doc: Sample description
  type: string
  inputBinding:
    prefix: --sample
- id: in_mei
  doc: Enables rMETL to display MEI/MED only.[True]
  type: string
  inputBinding:
    prefix: --MEI
- id: in_t_jiang_at_hit_dot_edu_dot_cn
  doc: 'positional arguments:'
  type: string
  inputBinding:
    position: 0
- id: in_sam
  doc: Input cluster.sam on STAGE realignment.
  type: string
  inputBinding:
    position: 1
- id: in_reference
  doc: The reference genome in fasta format.
  type: string
  inputBinding:
    position: 2
- id: in_output
  doc: Directory to output final callset.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rMETL
- calling
