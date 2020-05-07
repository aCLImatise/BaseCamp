class: CommandLineTool
id: starseqr.py.cwl
inputs:
- id: prefix
  doc: prefix to name files. Can be string or /path/to/string
  type: string
  inputBinding:
    prefix: --prefix
- id: fast_a
  doc: indexed fasta (.fa)
  type: string
  inputBinding:
    prefix: --fasta
- id: gtf
  doc: gtf file. (.gtf)
  type: string
  inputBinding:
    prefix: --gtf
- id: library
  doc: salmon library type(A, ISF, ISR, etc)
  type: string
  inputBinding:
    prefix: --library
- id: threads
  doc: Number of threads to use for STAR and STAR-SEQR. 4-12 recommended.
  type: string
  inputBinding:
    prefix: --threads
- id: bed_file
  doc: Bed file to subset analysis
  type: string
  inputBinding:
    prefix: --bed_file
- id: subset_type
  doc: allow fusions to pass with either one breakend in bed file or require both.
    Must use -b.
  type: string
  inputBinding:
    prefix: --subset_type
- id: as_type
  doc: assembler to use
  type: string
  inputBinding:
    prefix: --as_type
- id: keep_dups
  doc: keep read duplicates. Use for PCR data or with molecular tags
  type: boolean
  inputBinding:
    prefix: --keep_dups
- id: keep_gene_dups
  doc: allow internal gene duplications to be considered
  type: boolean
  inputBinding:
    prefix: --keep_gene_dups
- id: keep_mi_to
  doc: allow RNA fusions to contain at least one breakpoint from Mitochondria
  type: boolean
  inputBinding:
    prefix: --keep_mito
- id: verbose
  doc: verbose level... repeat up to three times.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: star_index
  doc: path to STAR index folder
  type: string
  inputBinding:
    prefix: --star_index
- id: m
  doc: '{0,1}, --mode {0,1} STAR alignment mode. 0=More-specific, 1=More-Sensitive'
  type: boolean
  inputBinding:
    prefix: -m
- id: star_j_xns
  doc: chimeric junctions file produced by STAR
  type: string
  inputBinding:
    prefix: --star_jxns
- id: star_sam
  doc: Chimeric.out.sam file produced by STAR. Either use this or -sb
  type: string
  inputBinding:
    prefix: --star_sam
- id: star_bam
  doc: Aligned.sortedByCoord.out.bam file produced by STAR. Must contain chimeric
    reads with ch tag.
  type: string
  inputBinding:
    prefix: --star_bam
outputs: []
cwlVersion: v1.1
baseCommand:
- starseqr.py
