class: CommandLineTool
id: starseqr.py.cwl
inputs:
- id: in_prefix
  doc: prefix to name files. Can be string or /path/to/string
  type: File
  inputBinding:
    prefix: --prefix
- id: in_fast_a
  doc: indexed fasta (.fa)
  type: string
  inputBinding:
    prefix: --fasta
- id: in_gtf
  doc: gtf file. (.gtf)
  type: File
  inputBinding:
    prefix: --gtf
- id: in_library
  doc: salmon library type(A, ISF, ISR, etc)
  type: string
  inputBinding:
    prefix: --library
- id: in_threads
  doc: "Number of threads to use for STAR and STAR-SEQR. 4-12\nrecommended."
  type: long
  inputBinding:
    prefix: --threads
- id: in_bed_file
  doc: Bed file to subset analysis
  type: File
  inputBinding:
    prefix: --bed_file
- id: in_subset_type
  doc: "allow fusions to pass with either one breakend in bed\nfile or require both.\
    \ Must use -b."
  type: string
  inputBinding:
    prefix: --subset_type
- id: in_as_type
  doc: assembler to use
  type: string
  inputBinding:
    prefix: --as_type
- id: in_keep_dups
  doc: "keep read duplicates. Use for PCR data or with\nmolecular tags"
  type: boolean
  inputBinding:
    prefix: --keep_dups
- id: in_keep_gene_dups
  doc: allow internal gene duplications to be considered
  type: boolean
  inputBinding:
    prefix: --keep_gene_dups
- id: in_keep_mi_to
  doc: "allow RNA fusions to contain at least one breakpoint\nfrom Mitochondria"
  type: boolean
  inputBinding:
    prefix: --keep_mito
- id: in_verbose
  doc: verbose level... repeat up to three times.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_fast_q_one
  doc: fastq.gz 1(.gz)
  type: long
  inputBinding:
    prefix: --fastq1
- id: in_fast_q_two
  doc: fastq.gz 2(.gz)
  type: long
  inputBinding:
    prefix: --fastq2
- id: in_star_index
  doc: path to STAR index folder
  type: File
  inputBinding:
    prefix: --star_index
- id: in_mode
  doc: STAR alignment mode. 0=More-specific, 1=More-Sensitive
  type: string
  inputBinding:
    prefix: --mode
- id: in_star_j_xns
  doc: chimeric junctions file produced by STAR
  type: File
  inputBinding:
    prefix: --star_jxns
- id: in_star_sam
  doc: "Chimeric.out.sam file produced by STAR. Either use\nthis or -sb"
  type: File
  inputBinding:
    prefix: --star_sam
- id: in_star_bam
  doc: "Aligned.sortedByCoord.out.bam file produced by STAR.\nMust contain chimeric\
    \ reads with ch tag.\n"
  type: File
  inputBinding:
    prefix: --star_bam
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_star_sam
  doc: "Chimeric.out.sam file produced by STAR. Either use\nthis or -sb"
  type: File
  outputBinding:
    glob: $(inputs.in_star_sam)
- id: out_star_bam
  doc: "Aligned.sortedByCoord.out.bam file produced by STAR.\nMust contain chimeric\
    \ reads with ch tag.\n"
  type: File
  outputBinding:
    glob: $(inputs.in_star_bam)
cwlVersion: v1.1
baseCommand:
- starseqr.py
