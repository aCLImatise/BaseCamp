version 1.0

task STAR {
  input {
    Boolean? _map_reads
    String? out_sam_attr_rg_line
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
    String all
    String bam_quant
    String _no_output
    String fast_x
    String old_two_dot_four
    String random
    String rb
    String vr
    String number
    String unique_identical
    String unique_identical_not_multi
    String read_one_five_p
    String read_two
    String rpm
    String remove_noncanonical
    String remove_noncanonical_unannotated
    String remove_inconsistent_strands
    String _no_filtering
    String at_slash_ac
    String no
    String _insertions_flushed
    String insertions_flushed_right
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
    String equal_sum_solocblensoloumilen
    String _defined_check
    String position_umi_barcode
    String only_exact_matches
    String one_mm
    String one_mm_multi
    String one_mm_multi_pseudo_counts
    String un_stranded
    String forward
    String reverse
    String gene
    String sj
    String gene_full
    String transcript_three_p
    String one_mm_all
    String one_mm_directional
    String only_exactly_matching
    String node_dup
    String multigene_umi
    String cell_ranger_two_dot_two
    String top_cells
    String output_filtered_cells
  }
  command <<<
    STAR \
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
      ~{all} \
      ~{bam_quant} \
      ~{_no_output} \
      ~{fast_x} \
      ~{old_two_dot_four} \
      ~{random} \
      ~{rb} \
      ~{vr} \
      ~{number} \
      ~{unique_identical} \
      ~{unique_identical_not_multi} \
      ~{read_one_five_p} \
      ~{read_two} \
      ~{rpm} \
      ~{remove_noncanonical} \
      ~{remove_noncanonical_unannotated} \
      ~{remove_inconsistent_strands} \
      ~{_no_filtering} \
      ~{at_slash_ac} \
      ~{no} \
      ~{_insertions_flushed} \
      ~{insertions_flushed_right} \
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
      ~{equal_sum_solocblensoloumilen} \
      ~{_defined_check} \
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
      ~{cell_ranger_two_dot_two} \
      ~{top_cells} \
      ~{output_filtered_cells} \
      ~{true="-1" false="" _map_reads} \
      ~{if defined(out_sam_attr_rg_line) then ("--outSAMattrRGline " +  '"' + out_sam_attr_rg_line + '"') else ""}
  >>>
  parameter_meta {
    _map_reads: ": map all reads"
    out_sam_attr_rg_line: ":xxx , ID:zzz \"DS:z z\" , ID:yyy DS:yyyy"
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
    all: "... all files including big Genome, SA and SAindex - this will create a complete genome directory"
    bam_quant: "... alignments to transcriptome in BAM format, unsorted. Requires --quantMode TranscriptomeSAM"
    _no_output: "... no output"
    fast_x: "... output in separate fasta/fastq files, Unmapped.out.mate1/2"
    old_two_dot_four: "... quasi-random order used before 2.5.0"
    random: "... random order of alignments for each multi-mapper. Read mates (pairs) are always adjacent, all alignment for each read stay together. This option will become default in the future releases."
    rb: "... alignment block read/genomic coordinates"
    vr: "... read coordinate of the variant"
    number: "... read number (index) in the FASTx file"
    unique_identical: "... mark all multimappers, and duplicate unique mappers. The coordinates, FLAG, CIGAR must be identical"
    unique_identical_not_multi: "... mark duplicate unique mappers but not multimappers."
    read_one_five_p: "... signal from only 5' of the 1st read, useful for CAGE/RAMPAGE etc"
    read_two: "... signal from only 2nd read"
    rpm: "... reads per million of mapped reads"
    remove_noncanonical: "... filter out alignments that contain non-canonical junctions"
    remove_noncanonical_unannotated: "... filter out alignments that contain non-canonical unannotated junctions when using annotated splice junctions database. The annotated non-canonical junctions will be kept."
    remove_inconsistent_strands: "... remove alignments that have junctions with inconsistent strands"
    _no_filtering: "... no filtering"
    at_slash_ac: "and GT/AT junction penalty  (in addition to scoreGap)"
    no: "... prohibit, useful for compatibility with Cufflinks"
    _insertions_flushed: "... insertions are not flushed"
    insertions_flushed_right: "... insertions are flushed to the right"
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
    equal_sum_solocblensoloumilen: "... equal to sum of soloCBlen+soloUMIlen"
    _defined_check: "... not defined, do not check"
    position_umi_barcode: "position of the UMI on the barcode read, same as soloCBposition Example: inDrop (Zilionis et al, Nat. Protocols, 2017): --soloCBposition  3_9_3_14"
    only_exact_matches: "... only exact matches allowed"
    one_mm: "... only one match in whitelist with 1 mismatched base allowed. Allowed CBs have to have at least one read with exact match."
    one_mm_multi: "... multiple matches in whitelist with 1 mismatched base allowed, posterior probability calculation is used choose one of the matches. Allowed CBs have to have at least one read with exact match. Similar to CellRanger 2.2.0"
    one_mm_multi_pseudo_counts: "... same as 1MM_Multi, but pseudocounts of 1 are added to all whitelist barcodes. Similar to CellRanger 3.x.x"
    un_stranded: "... no strand information"
    forward: "... read strand same as the original RNA molecule"
    reverse: "... read strand opposite to the original RNA molecule"
    gene: "... genes: reads match the gene transcript"
    sj: "... splice junctions: reported in SJ.out.tab"
    gene_full: "... full genes: count all reads overlapping genes' exons and introns"
    transcript_three_p: "... quantification of transcript for 3' protocols"
    one_mm_all: "... all UMIs with 1 mismatch distance to each other are collapsed (i.e. counted once)"
    one_mm_directional: "... follows the \"directional\" method from the UMI-tools by Smith, Heger and Sudbery (Genome Research 2017)."
    only_exactly_matching: "... only exactly matching UMIs are collapsed"
    node_dup: "... no deduplication of UMIs, count all reads. Allowed for --soloType SmartSeq"
    multigene_umi: "... remove lower-count UMIs that map to more than one gene (introduced in CellRanger 3.x.x)"
    cell_ranger_two_dot_two: "... simple filtering of CellRanger 2.2, followed by three numbers: number of expected cells, robust maximum percentile for UMI count, maximum to minimum ratio for UMI count"
    top_cells: "... only report top cells by UMI count, followed by the exact number of cells"
    output_filtered_cells: "... do not output filtered cells"
  }
}