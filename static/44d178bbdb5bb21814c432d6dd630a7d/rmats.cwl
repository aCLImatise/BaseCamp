class: CommandLineTool
id: rmats.py.cwl
inputs:
- id: arg1
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: arg2
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: gtf
  doc: An annotation of genes and transcripts in GTF format.
  type: string
  inputBinding:
    prefix: --gtf
- id: b1
  doc: BAM configuration file.
  type: string
  inputBinding:
    prefix: --b1
- id: b2
  doc: BAM configuration file.
  type: string
  inputBinding:
    prefix: --b2
- id: s1
  doc: FASTQ configuration file.
  type: string
  inputBinding:
    prefix: --s1
- id: s2
  doc: FASTQ configuration file.
  type: string
  inputBinding:
    prefix: --s2
- id: od
  doc: output folder of post step.
  type: string
  inputBinding:
    prefix: --od
- id: t
  doc: readtype, single or paired.
  type: string
  inputBinding:
    prefix: -t
- id: lib_type
  doc: Library type. Default is unstranded (fr-unstranded). Use fr-firststrand or
    fr-secondstrand for strand- specific data.
  type: string
  inputBinding:
    prefix: --libType
- id: read_length
  doc: The length of each read.
  type: string
  inputBinding:
    prefix: --readLength
- id: anchor_length
  doc: The anchor length. (default is 1.)
  type: string
  inputBinding:
    prefix: --anchorLength
- id: top_hat_anchor
  doc: The "anchor length" or "overhang length" used in the aligner. At least “anchor
    length” NT must be mapped to each end of a given junction. The default is 6. (This
    parameter applies only if using fastq).
  type: string
  inputBinding:
    prefix: --tophatAnchor
- id: bi
  doc: The folder name of the STAR binary indexes (i.e., the name of the folder that
    contains SA file). For example, use ~/STARindex/hg19 for hg19. (Only if using
    fastq)
  type: string
  inputBinding:
    prefix: --bi
- id: n_thread
  doc: The number of thread. The optimal number of thread should be equal to the number
    of CPU core.
  type: string
  inputBinding:
    prefix: --nthread
- id: t_stat
  doc: the number of thread for statistical model.
  type: string
  inputBinding:
    prefix: --tstat
- id: cst_at
  doc: 'The cutoff splicing difference. The cutoff used in the null hypothesis test
    for differential splicing. The default is 0.0001 for 0.01% difference. Valid:
    0 ≤ cutoff < 1.'
  type: string
  inputBinding:
    prefix: --cstat
- id: stat_off
  doc: Turn statistical analysis off.
  type: boolean
  inputBinding:
    prefix: --statoff
outputs: []
cwlVersion: v1.1
baseCommand:
- rmats.py
