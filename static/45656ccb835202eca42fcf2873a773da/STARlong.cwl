class: CommandLineTool
id: STARlong.cwl
inputs:
- id: lift_over
  doc: '... lift-over of GTF files (--sjdbGTFfile) between genome assemblies using
    chain file(s) from --genomeChainFiles.'
  type: string
  inputBinding:
    position: 0
- id: all_rwx
  doc: '... all-read/write/execute (same as chmod 777)'
  type: string
  inputBinding:
    position: 0
- id: load_and_keep
  doc: '... load genome into shared and keep it in memory after run'
  type: string
  inputBinding:
    position: 0
- id: load_and_remove
  doc: '... load genome into shared but remove it after run'
  type: string
  inputBinding:
    position: 1
- id: load_and_exit
  doc: '... load genome into shared memory and exit, keeping the genome in memory
    for future runs'
  type: string
  inputBinding:
    position: 2
- id: remove
  doc: '... do not map anything, just remove loaded genome from memory'
  type: string
  inputBinding:
    position: 3
- id: no_shared_memory
  doc: '... do not use shared memory, each job will have its own private copy of the
    genome'
  type: string
  inputBinding:
    position: 4
- id: all
  doc: '... all files including big Genome, SA and SAindex - this will create a complete
    genome directory'
  type: string
  inputBinding:
    position: 0
- id: bam_quant
  doc: '... alignments to transcriptome in BAM format, unsorted. Requires --quantMode
    TranscriptomeSAM'
  type: string
  inputBinding:
    position: 0
- id: none
  doc: '... no output'
  type: string
  inputBinding:
    position: 0
- id: fast_x
  doc: '... output in separate fasta/fastq files, Unmapped.out.mate1/2'
  type: string
  inputBinding:
    position: 1
- id: random
  doc: '... random order of alignments for each multi-mapper. Read mates (pairs) are
    always adjacent, all alignment for each read stay together. This option will become
    default in the future releases.'
  type: string
  inputBinding:
    position: 0
- id: rb
  doc: '... alignment block read/genomic coordinates'
  type: string
  inputBinding:
    position: 0
- id: vr
  doc: '... read coordinate of the variant'
  type: string
  inputBinding:
    position: 1
- id: number
  doc: '... read number (index) in the FASTx file'
  type: string
  inputBinding:
    position: 0
- id: unique_identical
  doc: '... mark all multimappers, and duplicate unique mappers. The coordinates,
    FLAG, CIGAR must be identical'
  type: string
  inputBinding:
    position: 0
- id: unique_identical_not_multi
  doc: '... mark duplicate unique mappers but not multimappers.'
  type: string
  inputBinding:
    position: 1
- id: read_1_5p
  doc: "... signal from only 5' of the 1st read, useful for CAGE/RAMPAGE etc"
  type: string
  inputBinding:
    position: 0
- id: read_2
  doc: '... signal from only 2nd read'
  type: string
  inputBinding:
    position: 1
- id: rpm
  doc: '... reads per million of mapped reads'
  type: string
  inputBinding:
    position: 0
- id: none
  doc: '... no normalization, "raw" counts'
  type: string
  inputBinding:
    position: 1
- id: none
  doc: '... no filtering'
  type: string
  inputBinding:
    position: 0
- id: remove_noncanonical
  doc: '... filter out alignments that contain non-canonical junctions'
  type: string
  inputBinding:
    position: 1
- id: remove_noncanonical_unannotated
  doc: '... filter out alignments that contain non-canonical unannotated junctions
    when using annotated splice junctions database. The annotated non-canonical junctions
    will be kept.'
  type: string
  inputBinding:
    position: 2
- id: remove_inconsistent_strands
  doc: '... remove alignments that have junctions with inconsistent strands'
  type: string
  inputBinding:
    position: 0
- id: none
  doc: '... no filtering'
  type: string
  inputBinding:
    position: 1
- id: no
  doc: '... prohibit, useful for compatibility with Cufflinks'
  type: string
  inputBinding:
    position: 0
- id: none
  doc: '... insertions are not flushed'
  type: string
  inputBinding:
    position: 0
- id: right
  doc: '... insertions are flushed to the right'
  type: string
  inputBinding:
    position: 1
- id: gene_counts
  doc: '... count reads per gene'
  type: string
  inputBinding:
    position: 0
- id: in_del_soft_clip_single_end
  doc: '... prohibit indels, soft clipping and single-end alignments - compatible
    with RSEM'
  type: string
  inputBinding:
    position: 0
- id: single_end
  doc: '... prohibit single-end alignments'
  type: string
  inputBinding:
    position: 1
- id: none
  doc: '... 1-pass mapping'
  type: string
  inputBinding:
    position: 0
- id: basic
  doc: '... basic 2-pass mapping, with all 1st pass junctions inserted into the genome
    indices on the fly'
  type: string
  inputBinding:
    position: 1
- id: sam_tag
  doc: '... add WASP tags to the alignments that pass WASP filtering'
  type: string
  inputBinding:
    position: 0
- id: cb_umi_simple
  doc: '... (a.k.a. Droplet) one UMI and one Cell Barcode of fixed length in read2,
    e.g. Drop-seq and 10X Chromium'
  type: string
  inputBinding:
    position: 0
- id: cb_umi_complex
  doc: '... one UMI of fixed length, but multiple Cell Barcodes of varying length,
    as well as adapters sequences are allowed in read2 only, e.g. inDrop.'
  type: string
  inputBinding:
    position: 1
- id: string
  doc: 'position of the UMI on the barcode read, same as soloCBposition Example: inDrop
    (Zilionis et al, Nat. Protocols, 2017): --soloCBposition  3_9_3_14'
  type: string
  inputBinding:
    position: 0
- id: un_stranded
  doc: '... no strand information'
  type: string
  inputBinding:
    position: 0
- id: forward
  doc: '... read strand same as the original RNA molecule'
  type: string
  inputBinding:
    position: 1
- id: reverse
  doc: '... read strand opposite to the original RNA molecule'
  type: string
  inputBinding:
    position: 2
- id: gene
  doc: '... genes: reads match the gene transcript'
  type: string
  inputBinding:
    position: 0
- id: sj
  doc: '... splice junctions: reported in SJ.out.tab'
  type: string
  inputBinding:
    position: 1
- id: gene_full
  doc: "... full genes: count all reads overlapping genes' exons and introns"
  type: string
  inputBinding:
    position: 2
- id: transcript_3p
  doc: "... quantification of transcript for 3' protocols"
  type: string
  inputBinding:
    position: 3
- id: exact
  doc: '... only exactly matching UMIs are collapsed'
  type: string
  inputBinding:
    position: 0
- id: multigene_umi
  doc: '... remove lower-count UMIs that map to more than one gene (introduced in
    CellRanger 3.x.x)'
  type: string
  inputBinding:
    position: 0
- id: file_name_prefix
  doc: gene_names   barcode_sequences   cell_feature_count_matrix
  type: File
  inputBinding:
    position: 0
- id: top_cells
  doc: '... only report top cells by UMI count, followed by the excat number of cells'
  type: string
  inputBinding:
    position: 0
- id: none
  doc: '... do not output filtered cells'
  type: string
  inputBinding:
    position: 1
- id: the
  doc: directory will default to outFileNamePrefix_STARtmp
  type: string
  inputBinding:
    prefix: '- the'
- id: out_sam_attr_rg_line
  doc: :xxx , ID:zzz "DS:z z" , ID:yyy DS:yyyy
  type: string
  inputBinding:
    prefix: --outSAMattrRGline
- id: solo_cb_position
  doc: 0_0_2_-1  3_1_3_8
  type: boolean
  inputBinding:
    prefix: --soloCBposition
outputs: []
cwlVersion: v1.1
baseCommand:
- STARlong
