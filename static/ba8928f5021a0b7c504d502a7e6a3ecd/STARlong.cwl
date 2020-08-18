class: CommandLineTool
id: ../../../STARlong.cwl
inputs:
- id: _map_reads
  doc: ': map all reads'
  type: boolean
  inputBinding:
    prefix: '-1'
- id: out_sam_attr_rg_line
  doc: :xxx , ID:zzz "DS:z z" , ID:yyy DS:yyyy
  type: string
  inputBinding:
    prefix: --outSAMattrRGline
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
- id: full
  doc: '... full (normal) genome'
  type: string
  inputBinding:
    position: 0
- id: transcriptome
  doc: '... genome consists of transcript sequences'
  type: string
  inputBinding:
    position: 1
- id: super_trans_rip_to_me
  doc: '... genome consists of superTranscript sequences'
  type: string
  inputBinding:
    position: 2
- id: _no_transformation
  doc: '... no transformation'
  type: string
  inputBinding:
    position: 0
- id: haploid
  doc: '... replace reference alleles with alternative alleles from VCF file (e.g.
    consensus allele)'
  type: string
  inputBinding:
    position: 1
- id: diploid
  doc: '... create two haplotypes for each chromosome listed in VCF file, for genotypes
    1|2, assumes perfect phasing (e.g. personal genome)'
  type: string
  inputBinding:
    position: 2
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
- id: _no_output
  doc: '... no output'
  type: string
  inputBinding:
    position: 0
- id: fast_x
  doc: '... output in separate fasta/fastq files, Unmapped.out.mate1/2'
  type: string
  inputBinding:
    position: 1
- id: old_two_dot_four
  doc: '... quasi-random order used before 2.5.0'
  type: string
  inputBinding:
    position: 0
- id: random
  doc: '... random order of alignments for each multi-mapper. Read mates (pairs) are
    always adjacent, all alignment for each read stay together. This option will become
    default in the future releases.'
  type: string
  inputBinding:
    position: 1
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
- id: read_one_five_p
  doc: "... signal from only 5' of the 1st read, useful for CAGE/RAMPAGE etc"
  type: string
  inputBinding:
    position: 0
- id: read_two
  doc: '... signal from only 2nd read'
  type: string
  inputBinding:
    position: 1
- id: rpm
  doc: '... reads per million of mapped reads'
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
- id: _no_filtering
  doc: '... no filtering'
  type: string
  inputBinding:
    position: 1
- id: at_slash_ac
  doc: and GT/AT junction penalty  (in addition to scoreGap)
  type: string
  inputBinding:
    position: 0
- id: no
  doc: '... prohibit, useful for compatibility with Cufflinks'
  type: string
  inputBinding:
    position: 0
- id: _insertions_flushed
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
- id: _pass_mapping
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
    e.g. Drop-seq and 10X Chromium.'
  type: string
  inputBinding:
    position: 0
- id: cb_umi_complex
  doc: '... one UMI of fixed length, but multiple Cell Barcodes of varying length,
    as well as adapters sequences are allowed in read2 only, e.g. inDrop.'
  type: string
  inputBinding:
    position: 1
- id: cb_sam_tagout
  doc: '... output Cell Barcode as CR and/or CB SAm tag. No UMI counting. --readFilesIn
    cDNA_read1 [cDNA_read2 if paired-end] CellBarcode_read . Requires --outSAMtype
    BAM Unsorted [and/or SortedByCoordinate]'
  type: string
  inputBinding:
    position: 2
- id: smart_seq
  doc: '... Smart-seq: each cell in a separate FASTQ (paired- or single-end), barcodes
    are corresponding read-groups, no UMI sequences, alignments deduplicated according
    to alignment start and end (after extending soft-clipped bases)'
  type: string
  inputBinding:
    position: 3
- id: whitelist_cell_barcodes
  doc: '... no whitelist: all cell barcodes are allowed'
  type: string
  inputBinding:
    position: 0
- id: equal_sum_solocblensoloumilen
  doc: '... equal to sum of soloCBlen+soloUMIlen'
  type: string
  inputBinding:
    position: 0
- id: _defined_check
  doc: '... not defined, do not check'
  type: string
  inputBinding:
    position: 1
- id: string
  doc: 'position of the UMI on the barcode read, same as soloCBposition Example: inDrop
    (Zilionis et al, Nat. Protocols, 2017): --soloCBposition  3_9_3_14'
  type: string
  inputBinding:
    position: 0
- id: only_exact_matches
  doc: '... only exact matches allowed'
  type: string
  inputBinding:
    position: 0
- id: one_mm
  doc: '... only one match in whitelist with 1 mismatched base allowed. Allowed CBs
    have to have at least one read with exact match.'
  type: string
  inputBinding:
    position: 1
- id: one_mm_multi
  doc: '... multiple matches in whitelist with 1 mismatched base allowed, posterior
    probability calculation is used choose one of the matches. Allowed CBs have to
    have at least one read with exact match. Similar to CellRanger 2.2.0'
  type: string
  inputBinding:
    position: 2
- id: one_mm_multi_pseudo_counts
  doc: '... same as 1MM_Multi, but pseudocounts of 1 are added to all whitelist barcodes.
    Similar to CellRanger 3.x.x'
  type: string
  inputBinding:
    position: 3
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
- id: transcript_three_p
  doc: "... quantification of transcript for 3' protocols"
  type: string
  inputBinding:
    position: 0
- id: one_mm_all
  doc: '... all UMIs with 1 mismatch distance to each other are collapsed (i.e. counted
    once)'
  type: string
  inputBinding:
    position: 0
- id: one_mm_directional
  doc: '... follows the "directional" method from the UMI-tools by Smith, Heger and
    Sudbery (Genome Research 2017).'
  type: string
  inputBinding:
    position: 1
- id: only_exactly_matching
  doc: '... only exactly matching UMIs are collapsed'
  type: string
  inputBinding:
    position: 2
- id: node_dup
  doc: '... no deduplication of UMIs, count all reads. Allowed for --soloType SmartSeq'
  type: string
  inputBinding:
    position: 3
- id: multigene_umi
  doc: '... remove lower-count UMIs that map to more than one gene (introduced in
    CellRanger 3.x.x)'
  type: string
  inputBinding:
    position: 0
- id: cell_ranger_two_dot_two
  doc: '... simple filtering of CellRanger 2.2, followed by three numbers: number
    of expected cells, robust maximum percentile for UMI count, maximum to minimum
    ratio for UMI count'
  type: string
  inputBinding:
    position: 0
- id: top_cells
  doc: '... only report top cells by UMI count, followed by the exact number of cells'
  type: string
  inputBinding:
    position: 1
- id: output_filtered_cells
  doc: '... do not output filtered cells'
  type: string
  inputBinding:
    position: 2
outputs: []
cwlVersion: v1.1
baseCommand:
- STARlong
