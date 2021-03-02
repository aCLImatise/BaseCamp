class: CommandLineTool
id: MotifRaptor_snpmotif.cwl
inputs:
- id: in_workdir
  doc: Working directory
  type: Directory?
  inputBinding:
    prefix: --workdir
- id: in_cell_type
  doc: Cell type or Tissue type ID
  type: string?
  inputBinding:
    prefix: --cell_type
- id: in_snp_hit_bed
  doc: hit snps on union bed file, usually from step1
  type: File?
  inputBinding:
    prefix: --snp_hit_bed
- id: in_snp_hit_seq
  doc: hit snps with sequence information, usually from step1
  type: long?
  inputBinding:
    prefix: --snp_hit_seq
- id: in_bg_snp
  doc: background snp list file or (genome)
  type: File?
  inputBinding:
    prefix: --bg_snp
- id: in_motifs
  doc: motif list file, no header, or (all)
  type: File?
  inputBinding:
    prefix: --motifs
- id: in_threads
  doc: "number of threads\n"
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- MotifRaptor
- snpmotif
