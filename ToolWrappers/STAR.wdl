version 1.0

task STAR {
  input {
    Boolean? _map_all_reads
    String? out_sam_attr_rg_line
    Boolean? solo_cb_position
    String align_reads
    String genome_generate
    String lift_over
    String all_rwx
    String load_and_keep
    String load_and_remove
    String load_and_exit
    String remove
    String no_shared_memory
    String full
    String transcriptome
    String super_trans_rip_to_me
    String _no_transformation
    String haploid
    String diploid
    String files_including_sa
    String _fasta_fastq
    String log
    String alignments_file_output
    String bam_unsorted
    String bam_quant
    String var_24
    String output_separate_fastafastq
    Float old_two_dot_four
    String random
    String bam
    String output_sam_sorting
    String unsorted
    String standard
    String nh_hi_nm
    String va
    String ha
    String vg
    String vw
    String sm
    String ss
    String sq
    String rb
    String vr
    String var_42
    Int number
    String unique_identical
    String unique_identical_not_multi
    String _signal_output
    String bed_graph
    String wiggle
    Int read_one_five_p
    Int read_two
    String stranded
    String rpm
    String _normalization_counts
    String normal
    String var_55
    String remove_noncanonical
    String remove_noncanonical_unannotated
    String remove_inconsistent_strands
    String var_59
    String at_slash_ac
    String local
    String end_to_end
    Int extend_five_po_fread_one
    String no
    String _insertions_flushed
    String insertions_flushed_right
    String junctions
    String separates_a_mold
    String within_bam
    String gene_counts
    String in_del_soft_clip_single_end
    String single_end
    String _pass_mapping
    String basic
    String sam_tag
    String cb_umi_simple
    String cb_umi_complex
    String cb_sam_tagout
    String smart_seq
    String whitelist_cell_barcodes
    String position_umi_barcode
    String only_exact_matches
    Int one_mm
    Int one_mm_multi
    Int one_mm_multi_pseudo_counts
    String un_stranded
    String forward
    String reverse
    String gene
    String sj
    String gene_full
    Int transcript_three_p
    Int one_mm_all
    Int one_mm_directional
    String only_exactly_matching
    String node_dup
    String multigene_umi
    String file_name_prefix
    Float cell_ranger_two_dot_two
    String top_cells
    String output_filtered_cells
  }
  command <<<
    STAR \
      ~{align_reads} \
      ~{genome_generate} \
      ~{lift_over} \
      ~{all_rwx} \
      ~{load_and_keep} \
      ~{load_and_remove} \
      ~{load_and_exit} \
      ~{remove} \
      ~{no_shared_memory} \
      ~{full} \
      ~{transcriptome} \
      ~{super_trans_rip_to_me} \
      ~{_no_transformation} \
      ~{haploid} \
      ~{diploid} \
      ~{files_including_sa} \
      ~{_fasta_fastq} \
      ~{log} \
      ~{alignments_file_output} \
      ~{bam_unsorted} \
      ~{bam_quant} \
      ~{var_24} \
      ~{output_separate_fastafastq} \
      ~{old_two_dot_four} \
      ~{random} \
      ~{bam} \
      ~{output_sam_sorting} \
      ~{unsorted} \
      ~{standard} \
      ~{nh_hi_nm} \
      ~{va} \
      ~{ha} \
      ~{vg} \
      ~{vw} \
      ~{sm} \
      ~{ss} \
      ~{sq} \
      ~{rb} \
      ~{vr} \
      ~{var_42} \
      ~{number} \
      ~{unique_identical} \
      ~{unique_identical_not_multi} \
      ~{_signal_output} \
      ~{bed_graph} \
      ~{wiggle} \
      ~{read_one_five_p} \
      ~{read_two} \
      ~{stranded} \
      ~{rpm} \
      ~{_normalization_counts} \
      ~{normal} \
      ~{var_55} \
      ~{remove_noncanonical} \
      ~{remove_noncanonical_unannotated} \
      ~{remove_inconsistent_strands} \
      ~{var_59} \
      ~{at_slash_ac} \
      ~{local} \
      ~{end_to_end} \
      ~{extend_five_po_fread_one} \
      ~{no} \
      ~{_insertions_flushed} \
      ~{insertions_flushed_right} \
      ~{junctions} \
      ~{separates_a_mold} \
      ~{within_bam} \
      ~{gene_counts} \
      ~{in_del_soft_clip_single_end} \
      ~{single_end} \
      ~{_pass_mapping} \
      ~{basic} \
      ~{sam_tag} \
      ~{cb_umi_simple} \
      ~{cb_umi_complex} \
      ~{cb_sam_tagout} \
      ~{smart_seq} \
      ~{whitelist_cell_barcodes} \
      ~{position_umi_barcode} \
      ~{only_exact_matches} \
      ~{one_mm} \
      ~{one_mm_multi} \
      ~{one_mm_multi_pseudo_counts} \
      ~{un_stranded} \
      ~{forward} \
      ~{reverse} \
      ~{gene} \
      ~{sj} \
      ~{gene_full} \
      ~{transcript_three_p} \
      ~{one_mm_all} \
      ~{one_mm_directional} \
      ~{only_exactly_matching} \
      ~{node_dup} \
      ~{multigene_umi} \
      ~{file_name_prefix} \
      ~{cell_ranger_two_dot_two} \
      ~{top_cells} \
      ~{output_filtered_cells} \
      ~{if (_map_all_reads) then "-1" else ""} \
      ~{if defined(out_sam_attr_rg_line) then ("--outSAMattrRGline " +  '"' + out_sam_attr_rg_line + '"') else ""} \
      ~{if (solo_cb_position) then "--soloCBposition" else ""}
  >>>
  parameter_meta {
    _map_all_reads: ": map all reads"
    out_sam_attr_rg_line: ":xxx , ID:zzz \\\"DS:z z\\\" , ID:yyy DS:yyyy"
    solo_cb_position: "0_0_2_-1  3_1_3_8"
    align_reads: "... map reads"
    genome_generate: "... generate genome files"
    lift_over: "... lift-over of GTF files (--sjdbGTFfile) between genome assemblies using chain file(s) from --genomeChainFiles."
    all_rwx: "... all-read/write/execute (same as chmod 777)"
    load_and_keep: "... load genome into shared and keep it in memory after run"
    load_and_remove: "... load genome into shared but remove it after run"
    load_and_exit: "... load genome into shared memory and exit, keeping the genome in memory for future runs"
    remove: "... do not map anything, just remove loaded genome from memory"
    no_shared_memory: "... do not use shared memory, each job will have its own private copy of the genome"
    full: "... full (normal) genome"
    transcriptome: "... genome consists of transcript sequences"
    super_trans_rip_to_me: "... genome consists of superTranscript sequences"
    _no_transformation: "... no transformation"
    haploid: "... replace reference alleles with alternative alleles from VCF file (e.g. consensus allele)"
    diploid: "... create two haplotypes for each chromosome listed in VCF file, for genotypes 1|2, assumes perfect phasing (e.g. personal genome)"
    files_including_sa: "... all files including big Genome, SA and SAindex - this will create a complete genome directory"
    _fasta_fastq: "... FASTA or FASTQ"
    log: "... log messages"
    alignments_file_output: "... alignments in SAM format (which normally are output to Aligned.out.sam file), normal standard output will go into Log.std.out"
    bam_unsorted: "... alignments in BAM format, unsorted. Requires --outSAMtype BAM Unsorted"
    bam_quant: "... alignments to transcriptome in BAM format, unsorted. Requires --quantMode TranscriptomeSAM"
    var_24: "... no output"
    output_separate_fastafastq: "... output in separate fasta/fastq files, Unmapped.out.mate1/2"
    old_two_dot_four: "... quasi-random order used before 2.5.0"
    random: "... random order of alignments for each multi-mapper. Read mates (pairs) are always adjacent, all alignment for each read stay together. This option will become default in the future releases."
    bam: "... output BAM without sorting"
    output_sam_sorting: "... output SAM without sorting"
    unsorted: "... standard unsorted"
    standard: "... NH HI AS nM"
    nh_hi_nm: "... NH HI AS nM NM MD jM jI MC ch"
    va: "... variant allele"
    ha: "... haplotype (1/2) when mapping to the diploid genome. Requires genome generated with --genomeTransformType Diploid"
    vg: "... genomic coordinate of the variant overlapped by the read"
    vw: "... 1 - alignment passes WASP filtering; 2,3,4,5,6,7 - alignment does not pass WASP filtering. Requires --waspOutputMode SAMtag."
    sm: "... assessment of CB and UMI"
    ss: "... sequence of the entire barcode (CB,UMI,adapter...)"
    sq: "... quality of the entire barcode"
    rb: "... alignment block read/genomic coordinates"
    vr: "... read coordinate of the variant"
    var_42: "... no output"
    number: "... read number (index) in the FASTx file"
    unique_identical: "... mark all multimappers, and duplicate unique mappers. The coordinates, FLAG, CIGAR must be identical"
    unique_identical_not_multi: "... mark duplicate unique mappers but not multimappers."
    _signal_output: "... no signal output"
    bed_graph: "... bedGraph format"
    wiggle: "... wiggle format"
    read_one_five_p: "... signal from only 5' of the 1st read, useful for CAGE/RAMPAGE etc"
    read_two: "... signal from only 2nd read"
    stranded: "...  separate strands, str1 and str2"
    rpm: "... reads per million of mapped reads"
    _normalization_counts: "... no normalization, \\\"raw\\\" counts"
    normal: "... standard filtering using only current alignment"
    var_55: "... no filtering"
    remove_noncanonical: "... filter out alignments that contain non-canonical junctions"
    remove_noncanonical_unannotated: "... filter out alignments that contain non-canonical unannotated junctions when using annotated splice junctions database. The annotated non-canonical junctions will be kept."
    remove_inconsistent_strands: "... remove alignments that have junctions with inconsistent strands"
    var_59: "... no filtering"
    at_slash_ac: "and GT/AT junction penalty  (in addition to scoreGap)"
    local: "... standard local alignment with soft-clipping allowed"
    end_to_end: "... force end-to-end read alignment, do not soft-clip"
    extend_five_po_fread_one: "... fully extend only the 5p of the read1, all other ends: local alignment"
    no: "... prohibit, useful for compatibility with Cufflinks"
    _insertions_flushed: "... insertions are not flushed"
    insertions_flushed_right: "... insertions are flushed to the right"
    junctions: "... Chimeric.out.junction"
    separates_a_mold: "... output old SAM into separate Chimeric.out.sam file"
    within_bam: "... output into main aligned BAM files (Aligned.*.bam)"
    gene_counts: "... count reads per gene"
    in_del_soft_clip_single_end: "... prohibit indels, soft clipping and single-end alignments - compatible with RSEM"
    single_end: "... prohibit single-end alignments"
    _pass_mapping: "... 1-pass mapping"
    basic: "... basic 2-pass mapping, with all 1st pass junctions inserted into the genome indices on the fly"
    sam_tag: "... add WASP tags to the alignments that pass WASP filtering"
    cb_umi_simple: "... (a.k.a. Droplet) one UMI and one Cell Barcode of fixed length in read2, e.g. Drop-seq and 10X Chromium."
    cb_umi_complex: "... one UMI of fixed length, but multiple Cell Barcodes of varying length, as well as adapters sequences are allowed in read2 only, e.g. inDrop."
    cb_sam_tagout: "... output Cell Barcode as CR and/or CB SAm tag. No UMI counting. --readFilesIn cDNA_read1 [cDNA_read2 if paired-end] CellBarcode_read . Requires --outSAMtype BAM Unsorted [and/or SortedByCoordinate]"
    smart_seq: "... Smart-seq: each cell in a separate FASTQ (paired- or single-end), barcodes are corresponding read-groups, no UMI sequences, alignments deduplicated according to alignment start and end (after extending soft-clipped bases)"
    whitelist_cell_barcodes: "... no whitelist: all cell barcodes are allowed"
    position_umi_barcode: "position of the UMI on the barcode read, same as soloCBposition\\nExample: inDrop (Zilionis et al, Nat. Protocols, 2017):\\n--soloCBposition  3_9_3_14"
    only_exact_matches: "... only exact matches allowed"
    one_mm: "... only one match in whitelist with 1 mismatched base allowed. Allowed CBs have to have at least one read with exact match."
    one_mm_multi: "... multiple matches in whitelist with 1 mismatched base allowed, posterior probability calculation is used choose one of the matches.\\nAllowed CBs have to have at least one read with exact match. Similar to CellRanger 2.2.0"
    one_mm_multi_pseudo_counts: "... same as 1MM_Multi, but pseudocounts of 1 are added to all whitelist barcodes.\\nSimilar to CellRanger 3.x.x"
    un_stranded: "... no strand information"
    forward: "... read strand same as the original RNA molecule"
    reverse: "... read strand opposite to the original RNA molecule"
    gene: "... genes: reads match the gene transcript"
    sj: "... splice junctions: reported in SJ.out.tab"
    gene_full: "... full genes: count all reads overlapping genes' exons and introns"
    transcript_three_p: "... quantification of transcript for 3' protocols"
    one_mm_all: "... all UMIs with 1 mismatch distance to each other are collapsed (i.e. counted once)"
    one_mm_directional: "... follows the \\\"directional\\\" method from the UMI-tools by Smith, Heger and Sudbery (Genome Research 2017)."
    only_exactly_matching: "... only exactly matching UMIs are collapsed"
    node_dup: "... no deduplication of UMIs, count all reads. Allowed for --soloType SmartSeq"
    multigene_umi: "... remove lower-count UMIs that map to more than one gene (introduced in CellRanger 3.x.x)"
    file_name_prefix: "gene_names   barcode_sequences   cell_feature_count_matrix"
    cell_ranger_two_dot_two: "... simple filtering of CellRanger 2.2, followed by three numbers: number of expected cells, robust maximum percentile for UMI count, maximum to minimum ratio for UMI count"
    top_cells: "... only report top cells by UMI count, followed by the exact number of cells"
    output_filtered_cells: "... do not output filtered cells"
  }
  output {
    File out_stdout = stdout()
  }
}