class: CommandLineTool
id: ../../../MotifRaptor_snpmotif.cwl
inputs:
- id: workdir
  doc: Working directory
  type: string
  inputBinding:
    prefix: --workdir
- id: cell_type
  doc: Cell type or Tissue type ID
  type: string
  inputBinding:
    prefix: --cell_type
- id: snp_hit_bed
  doc: hit snps on union bed file, usually from step1
  type: string
  inputBinding:
    prefix: --snp_hit_bed
- id: snp_hit_seq
  doc: hit snps with sequence information, usually from step1
  type: string
  inputBinding:
    prefix: --snp_hit_seq
- id: bg_snp
  doc: background snp list file or (genome)
  type: string
  inputBinding:
    prefix: --bg_snp
- id: motifs
  doc: motif list file, no header, or (all)
  type: string
  inputBinding:
    prefix: --motifs
- id: threads
  doc: number of threads
  type: string
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- MotifRaptor
- snpmotif
