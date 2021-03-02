class: CommandLineTool
id: STAR.cwl
inputs:
- id: in_read_files_sam_tags_keep
  doc: all tags
  type: string[]
  inputBinding:
    prefix: --readFilesSAMtagsKeep
- id: in__map_all_reads
  doc: ': map all reads'
  type: boolean?
  inputBinding:
    prefix: '-1'
- id: in_out_sam_attr_rg_line
  doc: :xxx , ID:zzz "DS:z z" , ID:yyy DS:yyyy
  type: string?
  inputBinding:
    prefix: --outSAMattrRGline
- id: in_solo_cb_position
  doc: 0_0_2_-1  3_1_3_8
  type: boolean?
  inputBinding:
    prefix: --soloCBposition
- id: in_align_reads
  doc: '... map reads'
  type: string
  inputBinding:
    position: 0
- id: in_genome_generate
  doc: '... generate genome files'
  type: string
  inputBinding:
    position: 1
- id: in_lift_over
  doc: '... lift-over of GTF files (--sjdbGTFfile) between genome assemblies using
    chain file(s) from --genomeChainFiles.'
  type: string
  inputBinding:
    position: 0
- id: in_solo_cell_filtering
  doc: </path/to/raw/count/dir/>   </path/to/output/prefix>    ... STARsolo cell filtering
    ("calling") without remapping, followed by the path to raw count directory and
    output (filtered) prefix
  type: string
  inputBinding:
    position: 1
- id: in_all_rwx
  doc: '... all-read/write/execute (same as chmod 777)'
  type: string
  inputBinding:
    position: 0
- id: in_load_and_keep
  doc: '... load genome into shared and keep it in memory after run'
  type: string
  inputBinding:
    position: 0
- id: in_load_and_remove
  doc: '... load genome into shared but remove it after run'
  type: string
  inputBinding:
    position: 1
- id: in_load_and_exit
  doc: '... load genome into shared memory and exit, keeping the genome in memory
    for future runs'
  type: string
  inputBinding:
    position: 2
- id: in_remove
  doc: '... do not map anything, just remove loaded genome from memory'
  type: string
  inputBinding:
    position: 3
- id: in_no_shared_memory
  doc: '... do not use shared memory, each job will have its own private copy of the
    genome'
  type: string
  inputBinding:
    position: 4
- id: in__sambam_alignments
  doc: '... SAM/BAM alignments'
  type: string
  inputBinding:
    position: 0
- id: in_splice_junctions_sjouttab
  doc: '... splice junctions (SJ.out.tab)'
  type: string
  inputBinding:
    position: 1
- id: in_haploid
  doc: '... replace reference alleles with alternative alleles from VCF file (e.g.
    consensus allele)'
  type: string
  inputBinding:
    position: 1
- id: in_diploid
  doc: '... create two haplotypes for each chromosome listed in VCF file, for genotypes
    1|2, assumes perfect phasing (e.g. personal genome)'
  type: string
  inputBinding:
    position: 2
- id: in_full
  doc: '... full (normal) genome'
  type: string
  inputBinding:
    position: 0
- id: in_transcriptome
  doc: '... genome consists of transcript sequences'
  type: string
  inputBinding:
    position: 1
- id: in_super_trans_rip_to_me
  doc: '... genome consists of superTranscript sequences'
  type: string
  inputBinding:
    position: 2
- id: in_files_including_sa
  doc: '... all files including big Genome, SA and SAindex - this will create a complete
    genome directory'
  type: string
  inputBinding:
    position: 0
- id: in__fasta_fastq
  doc: '... FASTA or FASTQ'
  type: string
  inputBinding:
    position: 0
- id: in__keep_tags
  doc: '... do not keep any tags'
  type: string
  inputBinding:
    position: 0
- id: in_log
  doc: '... log messages'
  type: string
  inputBinding:
    position: 0
- id: in_alignments_normally_are
  doc: '... alignments in SAM format (which normally are output to Aligned.out.sam
    file), normal standard output will go into Log.std.out'
  type: string
  inputBinding:
    position: 1
- id: in_bam_unsorted
  doc: '... alignments in BAM format, unsorted. Requires --outSAMtype BAM Unsorted'
  type: string
  inputBinding:
    position: 2
- id: in_bam_quant
  doc: '... alignments to transcriptome in BAM format, unsorted. Requires --quantMode
    TranscriptomeSAM'
  type: string
  inputBinding:
    position: 0
- id: in_var_28
  doc: '... no output'
  type: string
  inputBinding:
    position: 0
- id: in_output_separate_fastafastq
  doc: '... output in separate fasta/fastq files, Unmapped.out.mate1/2'
  type: string
  inputBinding:
    position: 1
- id: in_old_two_dot_four
  doc: '... quasi-random order used before 2.5.0'
  type: double
  inputBinding:
    position: 0
- id: in_random
  doc: '... random order of alignments for each multi-mapper. Read mates (pairs) are
    always adjacent, all alignment for each read stay together. This option will become
    default in the future releases.'
  type: string
  inputBinding:
    position: 1
- id: in_bam
  doc: '... output BAM without sorting'
  type: string
  inputBinding:
    position: 0
- id: in_output_sam_sorting
  doc: '... output SAM without sorting'
  type: string
  inputBinding:
    position: 1
- id: in_unsorted
  doc: '... standard unsorted'
  type: string
  inputBinding:
    position: 0
- id: in_standard
  doc: '... NH HI AS nM'
  type: string
  inputBinding:
    position: 1
- id: in_nh_hi_as_nm_ch
  doc: '... NH HI AS nM NM MD jM jI MC ch                                                                    '
  type: string
  inputBinding:
    position: 2
- id: in_nh
  doc: '... number of loci the reads maps to: =1 for unique mappers, >1 for multimappers.
    Standard SAM tag.'
  type: string
  inputBinding:
    position: 0
- id: in_hi
  doc: '... multiple alignment index, starts with --outSAMattrIHstart (=1 by default).
    Standard SAM tag.'
  type: string
  inputBinding:
    position: 1
- id: in_as
  doc: '... local alignment score, +1/-1 for matches/mismateches, score* penalties
    for indels and gaps. For PE reads, total score for two mates. Stadnard SAM tag.'
  type: string
  inputBinding:
    position: 2
- id: in_number_mismatches_pe
  doc: '... number of mismatches. For PE reads, sum over two mates.'
  type: string
  inputBinding:
    position: 3
- id: in_edit_distance_inserted
  doc: '... edit distance to the reference (number of mismatched + inserted + deleted
    bases) for each mate. Standard SAM tag.'
  type: string
  inputBinding:
    position: 4
- id: in_md
  doc: '... string encoding mismatched and deleted reference bases (see standard SAM
    specifications). Standard SAM tag.'
  type: string
  inputBinding:
    position: 5
- id: in_jm
  doc: '... intron motifs for all junctions (i.e. N in CIGAR): 0: non-canonical; 1:
    GT/AG, 2: CT/AC, 3: GC/AG, 4: CT/GC, 5: AT/AC, 6: GT/AT. If splice junctions database
    is used, and a junction is annotated, 20 is added to its motif value.'
  type: string
  inputBinding:
    position: 6
- id: in_ji
  doc: '... start and end of introns for all junctions (1-based).'
  type: string
  inputBinding:
    position: 7
- id: in_xs
  doc: '... alignment strand according to --outSAMstrandField.'
  type: string
  inputBinding:
    position: 8
- id: in_mc
  doc: "... mate's CIGAR string. Standard SAM tag."
  type: string
  inputBinding:
    position: 9
- id: in_ch
  doc: '... marks all segment of all chimeric alingments for --chimOutType WithinBAM
    output.'
  type: string
  inputBinding:
    position: 10
- id: in_cn
  doc: "... number of bases clipped from the read ends: 5' and 3'"
  type: string
  inputBinding:
    position: 11
- id: in_va
  doc: '... variant allele'
  type: string
  inputBinding:
    position: 0
- id: in_vg
  doc: '... genomic coordinate of the variant overlapped by the read.'
  type: string
  inputBinding:
    position: 1
- id: in_vw
  doc: '... 1 - alignment passes WASP filtering; 2,3,4,5,6,7 - alignment does not
    pass WASP filtering. Requires --waspOutputMode SAMtag.'
  type: string
  inputBinding:
    position: 2
- id: in_sm
  doc: '... assessment of CB and UMI.'
  type: string
  inputBinding:
    position: 0
- id: in_ss
  doc: '... sequence of the entire barcode (CB,UMI,adapter).'
  type: string
  inputBinding:
    position: 1
- id: in_sq
  doc: '... quality of the entire barcode.'
  type: string
  inputBinding:
    position: 2
- id: in_ha
  doc: '... haplotype (1/2) when mapping to the diploid genome. Requires genome generated
    with --genomeTransformType Diploid .                               '
  type: string
  inputBinding:
    position: 0
- id: in_rb
  doc: '... alignment block read/genomic coordinates.'
  type: string
  inputBinding:
    position: 1
- id: in_vr
  doc: '... read coordinate of the variant.'
  type: string
  inputBinding:
    position: 2
- id: in_var_58
  doc: '... no output'
  type: string
  inputBinding:
    position: 0
- id: in_number
  doc: '... read number (index) in the FASTx file'
  type: long
  inputBinding:
    position: 0
- id: in_unique_identical
  doc: '... mark all multimappers, and duplicate unique mappers. The coordinates,
    FLAG, CIGAR must be identical'
  type: string
  inputBinding:
    position: 0
- id: in_unique_identical_not_multi
  doc: '... mark duplicate unique mappers but not multimappers.'
  type: string
  inputBinding:
    position: 1
- id: in__signal_output
  doc: '... no signal output'
  type: string
  inputBinding:
    position: 0
- id: in_bed_graph
  doc: '... bedGraph format'
  type: string
  inputBinding:
    position: 1
- id: in_wiggle
  doc: '... wiggle format'
  type: string
  inputBinding:
    position: 2
- id: in_read_one_five_p
  doc: "... signal from only 5' of the 1st read, useful for CAGE/RAMPAGE etc"
  type: long
  inputBinding:
    position: 0
- id: in_read_two
  doc: '... signal from only 2nd read'
  type: long
  inputBinding:
    position: 1
- id: in_stranded
  doc: '...  separate strands, str1 and str2'
  type: string
  inputBinding:
    position: 0
- id: in_rpm
  doc: '... reads per million of mapped reads'
  type: string
  inputBinding:
    position: 0
- id: in__normalization_counts
  doc: '... no normalization, "raw" counts'
  type: string
  inputBinding:
    position: 1
- id: in_normal
  doc: '... standard filtering using only current alignment'
  type: string
  inputBinding:
    position: 0
- id: in_var_71
  doc: '... no filtering'
  type: string
  inputBinding:
    position: 0
- id: in_remove_noncanonical
  doc: '... filter out alignments that contain non-canonical junctions'
  type: string
  inputBinding:
    position: 1
- id: in_remove_noncanonical_unannotated
  doc: '... filter out alignments that contain non-canonical unannotated junctions
    when using annotated splice junctions database. The annotated non-canonical junctions
    will be kept.'
  type: string
  inputBinding:
    position: 2
- id: in_remove_inconsistent_strands
  doc: '... remove alignments that have junctions with inconsistent strands'
  type: string
  inputBinding:
    position: 0
- id: in_var_75
  doc: '... no filtering'
  type: string
  inputBinding:
    position: 1
- id: in_local
  doc: '... standard local alignment with soft-clipping allowed'
  type: string
  inputBinding:
    position: 0
- id: in_end_to_end
  doc: '... force end-to-end read alignment, do not soft-clip'
  type: string
  inputBinding:
    position: 1
- id: in_extend_five_po_fread_one
  doc: '... fully extend only the 5p of the read1, all other ends: local alignment'
  type: long
  inputBinding:
    position: 2
- id: in_no
  doc: '... prohibit, useful for compatibility with Cufflinks'
  type: string
  inputBinding:
    position: 0
- id: in__insertions_flushed
  doc: '... insertions are not flushed'
  type: string
  inputBinding:
    position: 0
- id: in_right
  doc: '... insertions are flushed to the right'
  type: string
  inputBinding:
    position: 1
- id: in_junctions
  doc: '... Chimeric.out.junction'
  type: string
  inputBinding:
    position: 0
- id: in_separates_a_mold
  doc: '... output old SAM into separate Chimeric.out.sam file'
  type: string
  inputBinding:
    position: 1
- id: in_within_bam
  doc: '... output into main aligned BAM files (Aligned.*.bam)'
  type: string
  inputBinding:
    position: 2
- id: in_gene_counts
  doc: '... count reads per gene'
  type: string
  inputBinding:
    position: 0
- id: in_in_del_soft_clip_single_end
  doc: '... prohibit indels, soft clipping and single-end alignments - compatible
    with RSEM'
  type: string
  inputBinding:
    position: 0
- id: in_single_end
  doc: '... prohibit single-end alignments'
  type: string
  inputBinding:
    position: 1
- id: in__pass_mapping
  doc: '... 1-pass mapping'
  type: string
  inputBinding:
    position: 0
- id: in_basic
  doc: '... basic 2-pass mapping, with all 1st pass junctions inserted into the genome
    indices on the fly'
  type: string
  inputBinding:
    position: 1
- id: in_sam_tag
  doc: '... add WASP tags to the alignments that pass WASP filtering'
  type: string
  inputBinding:
    position: 0
- id: in_cb_umi_simple
  doc: '... (a.k.a. Droplet) one UMI and one Cell Barcode of fixed length in read2,
    e.g. Drop-seq and 10X Chromium.'
  type: string
  inputBinding:
    position: 0
- id: in_cb_umi_complex
  doc: '... one UMI of fixed length, but multiple Cell Barcodes of varying length,
    as well as adapters sequences are allowed in read2 only, e.g. inDrop.'
  type: string
  inputBinding:
    position: 1
- id: in_cb_sam_tagout
  doc: '... output Cell Barcode as CR and/or CB SAm tag. No UMI counting. --readFilesIn
    cDNA_read1 [cDNA_read2 if paired-end] CellBarcode_read . Requires --outSAMtype
    BAM Unsorted [and/or SortedByCoordinate]'
  type: string
  inputBinding:
    position: 2
- id: in_smart_seq
  doc: '... Smart-seq: each cell in a separate FASTQ (paired- or single-end), barcodes
    are corresponding read-groups, no UMI sequences, alignments deduplicated according
    to alignment start and end (after extending soft-clipped bases)'
  type: string
  inputBinding:
    position: 3
- id: in_whitelist_cell_barcodes
  doc: '... no whitelist: all cell barcodes are allowed'
  type: string
  inputBinding:
    position: 0
- id: in_string
  doc: "position of the UMI on the barcode read, same as soloCBposition\nExample:\
    \ inDrop (Zilionis et al, Nat. Protocols, 2017):\n--soloCBposition  3_9_3_14"
  type: string
  inputBinding:
    position: 0
- id: in_only_exact_matches
  doc: '... only exact matches allowed'
  type: string
  inputBinding:
    position: 0
- id: in_one_mm
  doc: '... only one match in whitelist with 1 mismatched base allowed. Allowed CBs
    have to have at least one read with exact match.'
  type: long
  inputBinding:
    position: 1
- id: in_one_mm_multi
  doc: "... multiple matches in whitelist with 1 mismatched base allowed, posterior\
    \ probability calculation is used choose one of the matches.\nAllowed CBs have\
    \ to have at least one read with exact match. This option matches best with CellRanger\
    \ 2.2.0"
  type: long
  inputBinding:
    position: 2
- id: in_one_mm_multi_pseudo_counts
  doc: '... same as 1MM_Multi, but pseudocounts of 1 are added to all whitelist barcodes.'
  type: long
  inputBinding:
    position: 3
- id: in_one_mm_multi_n_base_pseudo_counts
  doc: '... same as 1MM_multi_pseudocounts, multimatching to WL is allowed for CBs
    with N-bases. This option matches best with CellRanger >= 3.0.0'
  type: long
  inputBinding:
    position: 4
- id: in_un_stranded
  doc: '... no strand information'
  type: string
  inputBinding:
    position: 0
- id: in_forward
  doc: '... read strand same as the original RNA molecule'
  type: string
  inputBinding:
    position: 1
- id: in_reverse
  doc: '... read strand opposite to the original RNA molecule'
  type: string
  inputBinding:
    position: 2
- id: in_gene
  doc: '... genes: reads match the gene transcript'
  type: string
  inputBinding:
    position: 0
- id: in_splice_junctions_reported
  doc: '... splice junctions: reported in SJ.out.tab'
  type: string
  inputBinding:
    position: 1
- id: in_gene_full
  doc: "... full genes: count all reads overlapping genes' exons and introns"
  type: string
  inputBinding:
    position: 2
- id: in_transcript_three_p
  doc: "... quantification of transcript for 3' protocols"
  type: long
  inputBinding:
    position: 0
- id: in_one_mm_all
  doc: '... all UMIs with 1 mismatch distance to each other are collapsed (i.e. counted
    once).'
  type: long
  inputBinding:
    position: 0
- id: in_one_mm_directional_umi_tools
  doc: '... follows the "directional" method from the UMI-tools by Smith, Heger and
    Sudbery (Genome Research 2017).'
  type: long
  inputBinding:
    position: 1
- id: in_one_mm_directional
  doc: '... same as 1MM_Directional_UMItools, but with more stringent criteria for
    duplicate UMIs'
  type: long
  inputBinding:
    position: 2
- id: in_only_exactly_matching
  doc: '... only exactly matching UMIs are collapsed.'
  type: string
  inputBinding:
    position: 3
- id: in_node_dup
  doc: '... no deduplication of UMIs, count all reads.'
  type: string
  inputBinding:
    position: 4
- id: in_one_mm_cr
  doc: '... CellRanger2-4 algorithm for 1MM UMI collapsing.'
  type: long
  inputBinding:
    position: 5
- id: in_multigene_umi
  doc: '... basic + remove lower-count UMIs that map to more than one gene.'
  type: string
  inputBinding:
    position: 0
- id: in_file_name_prefix
  doc: gene_names   barcode_sequences   cell_feature_count_matrix
  type: string
  inputBinding:
    position: 0
- id: in_output_filtered_cells
  doc: '... do not output filtered cells'
  type: string
  inputBinding:
    position: 0
- id: in_top_cells
  doc: '... only report top cells by UMI count, followed by the exact number of cells'
  type: string
  inputBinding:
    position: 1
- id: in_cell_ranger_two_dot_two
  doc: "... simple filtering of CellRanger 2.2. \nCan be followed by numbers: number\
    \ of expected cells, robust maximum percentile for UMI count, maximum to minimum\
    \ ratio for UMI count\nThe harcoded values are from CellRanger: nExpectedCells=3000;\
    \  maxPercentile=0.99;  maxMinRatio=10"
  type: double
  inputBinding:
    position: 2
- id: in_empty_drops_cr
  doc: "... EmptyDrops filtering in CellRanger flavor. Please cite the original EmptyDrops\
    \ paper: A.T.L Lun et al, Genome Biology, 20, 63 (2019): https://genomebiology.biomedcentral.com/articles/10.1186/s13059-019-1662-y\n\
    Can be followed by 10 numeric parameters:  nExpectedCells   maxPercentile   maxMinRatio\
    \   indMin   indMax   umiMin   umiMinFracMedian   candMaxN   FDR   simN\nThe harcoded\
    \ values are from CellRanger:             3000            0.99            10 \
    \   45000    90000      500               0.01      20000  0.01  10000"
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/star:2.7.8a--0
cwlVersion: v1.1
baseCommand:
- STAR
