class: CommandLineTool
id: gsnap.cwl
inputs:
- id: in_dir
  doc: "Genome directory.  Default (as specified by --with-gmapdb to the configure\
    \ program) is\n/usr/local/share"
  type: Directory?
  inputBinding:
    prefix: --dir
- id: in_db
  doc: Genome database
  type: string?
  inputBinding:
    prefix: --db
- id: in_use_local_db
  doc: "Whether to use the local hash tables, which help with finding extensions to\
    \ the ends\nof alignments in the presence of splicing or indels (0=no, 1=yes if\
    \ available (default))"
  type: long?
  inputBinding:
    prefix: --use-localdb
- id: in_transcript_dir
  doc: Transcriptome directory.  Default is the value for --dir above
  type: Directory?
  inputBinding:
    prefix: --transcriptdir
- id: in_transcript_db
  doc: Transcriptome database
  type: string?
  inputBinding:
    prefix: --transcriptdb
- id: in_use_transcriptome_only
  doc: Use only the transcriptome index and not the genome index
  type: boolean?
  inputBinding:
    prefix: --use-transcriptome-only
- id: in_km_er
  doc: "kmer size to use in genome database (allowed values: 16 or less)\nIf not specified,\
    \ the program will find the highest available\nkmer size in the genome database"
  type: long?
  inputBinding:
    prefix: --kmer
- id: in_sampling
  doc: "Sampling to use in genome database.  If not specified, the program\nwill find\
    \ the smallest available sampling value in the genome database\nwithin selected\
    \ k-mer size"
  type: long?
  inputBinding:
    prefix: --sampling
- id: in_part
  doc: "/INT             Process only the i-th out of every n sequences\ne.g., 0/100\
    \ or 99/100 (useful for distributing jobs\nto a computer farm)."
  type: long?
  inputBinding:
    prefix: --part
- id: in_input_buffer_size
  doc: "Size of input buffer (program reads this many sequences\nat a time for efficiency)\
    \ (default 10000)"
  type: long?
  inputBinding:
    prefix: --input-buffer-size
- id: in_barcode_length
  doc: "Amount of barcode to remove from start of every read before alignment\n(default\
    \ 0)"
  type: long?
  inputBinding:
    prefix: --barcode-length
- id: in_end_trim_length
  doc: "Amount of trim to remove from the end of every read before alignment\n(default\
    \ 0)"
  type: long?
  inputBinding:
    prefix: --endtrim-length
- id: in_orientation
  doc: "Orientation of paired-end reads\nAllowed values: FR (fwd-rev, or typical Illumina;\
    \ default),\nRF (rev-fwd, for circularized inserts), or FF (fwd-fwd, same strand)"
  type: string?
  inputBinding:
    prefix: --orientation
- id: in_fast_q_id_start
  doc: Starting position of identifier in FASTQ header, space-delimited (>= 1)
  type: long?
  inputBinding:
    prefix: --fastq-id-start
- id: in_fast_q_id_end
  doc: "Ending position of identifier in FASTQ header, space-delimited (>= 1)\nExamples:\n\
    @HWUSI-EAS100R:6:73:941:1973#0/1\nstart=1, end=1 (default) => identifier is HWUSI-EAS100R:6:73:941:1973#0\n\
    @SRR001666.1 071112_SLXA-EAS1_s_7:5:1:817:345 length=36\nstart=1, end=1  => identifier\
    \ is SRR001666.1\nstart=2, end=2  => identifier is 071112_SLXA-EAS1_s_7:5:1:817:345\n\
    start=1, end=2  => identifier is SRR001666.1 071112_SLXA-EAS1_s_7:5:1:817:345"
  type: long?
  inputBinding:
    prefix: --fastq-id-end
- id: in_force_single_end
  doc: "When multiple FASTQ files are provided on the command line, GSNAP assumes\n\
    they are matching paired-end files.  This flag treats each file as single-end."
  type: boolean?
  inputBinding:
    prefix: --force-single-end
- id: in_filter_chastity
  doc: "Skips reads marked by the Illumina chastity program.  Expecting a string\n\
    after the accession having a 'Y' after the first colon, like this:\n@accession\
    \ 1:Y:0:CTTGTA\nwhere the 'Y' signifies filtering by chastity.\nValues: off (default),\
    \ either, both.  For 'either', a 'Y' on either end\nof a paired-end read will\
    \ be filtered.  For 'both', a 'Y' is required\non both ends of a paired-end read\
    \ (or on the only end of a single-end read)."
  type: string?
  inputBinding:
    prefix: --filter-chastity
- id: in_allow_pe_name_mismatch
  doc: Allows accession names of reads to mismatch in paired-end files
  type: boolean?
  inputBinding:
    prefix: --allow-pe-name-mismatch
- id: in_interleaved
  doc: Input is in interleaved format (one read per line, tab-delimited
  type: boolean?
  inputBinding:
    prefix: --interleaved
- id: in_gunzip
  doc: Uncompress gzipped input files
  type: boolean?
  inputBinding:
    prefix: --gunzip
- id: in_b_unzip_two
  doc: Uncompress bzip2-compressed input files
  type: boolean?
  inputBinding:
    prefix: --bunzip2
- id: in_batch
  doc: Batch mode (default = 2)
  type: long?
  inputBinding:
    prefix: --batch
- id: in_use_shared_memory
  doc: "If 1, then allocated memory is shared among all processes on this node\nIf\
    \ 0 (default), then each process has private allocated memory"
  type: long?
  inputBinding:
    prefix: --use-shared-memory
- id: in_preload_shared_memory
  doc: "Load files indicated by --batch mode into shared memory for use by other\n\
    GMAP/GSNAP processes on this node, and then exit.  Ignore any input files."
  type: boolean?
  inputBinding:
    prefix: --preload-shared-memory
- id: in_unload_shared_memory
  doc: "Unload files indicated by --batch mode into shared memory, or allow them\n\
    to be unloaded when existing GMAP/GSNAP processes on this node are finished\n\
    with them.  Ignore any input files."
  type: boolean?
  inputBinding:
    prefix: --unload-shared-memory
- id: in_max_mismatches
  doc: "Maximum number of mismatches allowed (if not specified, then\nGSNAP tries\
    \ to find the best possible match in the genome)\nIf specified between 0.0 and\
    \ 1.0, then treated as a fraction\nof each read length.  Otherwise, treated as\
    \ an integral number\nof mismatches (including indel and splicing penalties).\n\
    Default is to be unspecified (to find the best possible match)"
  type: double?
  inputBinding:
    prefix: --max-mismatches
- id: in_max_ref_mismatches
  doc: If GSNAP is run under SNP-tolerant or masked genome mode, then the
  type: double?
  inputBinding:
    prefix: --max-ref-mismatches
- id: in_min_coverage
  doc: "Minimum coverage required for an alignment.\nIf specified between 0.0 and\
    \ 1.0, then treated as a fraction\nof each read length.  Otherwise, treated as\
    \ an integral number\nof base pairs.  Default value is 0.5."
  type: double?
  inputBinding:
    prefix: --min-coverage
- id: in_filter_within_trims
  doc: "Whether to count mismatches in trimmed part of alignment (1, yes) or\nmismatches\
    \ to the ends of the read (0, no), when applying the\n--max-mismatches and --max-ref-mismatches\
    \ parameters.\nDefault for RNA-Seq is 1 (yes) so we can allow for\nreads that\
    \ align past the ends of an exon.  Default for DNA-Seq\nis 0 (no).\nFor RNA-Seq,\
    \ trimmed ends should be ignored, because trimming\nis performed at probable splice\
    \ sites, to allow for reads that\nalign past the ends of an exon."
  type: long?
  inputBinding:
    prefix: --filter-within-trims
- id: in_query_unk_mismatch
  doc: "Whether to count unknown (N) characters in the query as a mismatch\n(0=no\
    \ (default), 1=yes)"
  type: long?
  inputBinding:
    prefix: --query-unk-mismatch
- id: in_genome_unk_mismatch
  doc: "Whether to count unknown (N) characters in the genome as a mismatch\n(0=no,\
    \ 1=yes).  If --use-mask is specified, default is no, otherwise yes."
  type: long?
  inputBinding:
    prefix: --genome-unk-mismatch
- id: in_in_del_penalty
  doc: "Penalty for an indel (default 2).\nCounts against mismatches allowed.  To\
    \ find indels, make\nindel-penalty less than or equal to max-mismatches.\nA value\
    \ < 2 can lead to false positives at read ends"
  type: long?
  inputBinding:
    prefix: --indel-penalty
- id: in_in_del_end_length
  doc: Minimum length at end required for indel alignments (default 4)
  type: long?
  inputBinding:
    prefix: --indel-endlength
- id: in_max_middle_insertions
  doc: "Maximum number of middle insertions allowed (default is 0.2)\nIf specified\
    \ between 0.0 and 1.0, then treated as a fraction\nof each read length.  Otherwise,\
    \ treated as an integral number\nof base pairs"
  type: double?
  inputBinding:
    prefix: --max-middle-insertions
- id: in_max_middle_deletions
  doc: "Maximum number of middle deletions allowed (default 0.2)\nIf specified between\
    \ 0.0 and 1.0, then treated as a fraction\nof each read length.  Otherwise, treated\
    \ as an integral number\nof base pairs"
  type: double?
  inputBinding:
    prefix: --max-middle-deletions
- id: in_max_end_insertions
  doc: Maximum number of end insertions allowed (default 3)
  type: long?
  inputBinding:
    prefix: --max-end-insertions
- id: in_max_end_deletions
  doc: Maximum number of end deletions allowed (default 3)
  type: long?
  inputBinding:
    prefix: --max-end-deletions
- id: in_suboptimal_levels
  doc: "Report suboptimal hits beyond best hit (default 0)\nAll hits with best score\
    \ plus suboptimal-levels are reported"
  type: long?
  inputBinding:
    prefix: --suboptimal-levels
- id: in_adapter_strip
  doc: "Method for removing adapters from reads.  Currently allowed values: off, paired.\n\
    Default is \"off\".  To turn on, specify \"paired\", which removes adapters\n\
    from paired-end reads if they appear to be present."
  type: string?
  inputBinding:
    prefix: --adapter-strip
- id: in_trim_in_del_score
  doc: "Score to use for indels when trimming at ends.  To turn off trimming,\nspecify\
    \ 0.  Default is -2 for both RNA-Seq and DNA-Seq.  Warning:\nTurning trimming\
    \ off in RNA-Seq can give false positive indels\nat the ends of reads"
  type: long?
  inputBinding:
    prefix: --trim-indel-score
- id: in_use_mask
  doc: Use genome containing masks (e.g. for non-exons) for scoring preference
  type: string?
  inputBinding:
    prefix: --use-mask
- id: in_snps_dir
  doc: "Directory for SNPs index files (created using snpindex) (default is\nlocation\
    \ of genome index files specified using -D and -d)"
  type: Directory?
  inputBinding:
    prefix: --snpsdir
- id: in_use_snps
  doc: "Use database containing known SNPs (in <STRING>.iit, built\npreviously using\
    \ snpindex) for tolerance to SNPs"
  type: string?
  inputBinding:
    prefix: --use-snps
- id: in_c_met_dir
  doc: "Directory for methylcytosine index files (created using cmetindex)\n(default\
    \ is location of genome index files specified using -D, -V, and -d)"
  type: Directory?
  inputBinding:
    prefix: --cmetdir
- id: in_atoi_dir
  doc: "Directory for A-to-I RNA editing index files (created using atoiindex)\n(default\
    \ is location of genome index files specified using -D, -V, and -d)"
  type: Directory?
  inputBinding:
    prefix: --atoidir
- id: in_alignment_mode_standard
  doc: "Alignment mode: standard (default), cmet-stranded, cmet-nonstranded,\natoi-stranded,\
    \ atoi-nonstranded, ttoc-stranded, or ttoc-nonstranded.\nNon-standard modes requires\
    \ you to have previously run the cmetindex\nor atoiindex programs (which also\
    \ cover the ttoc modes) on the genome"
  type: string?
  inputBinding:
    prefix: --mode
- id: in_n_threads
  doc: Number of worker threads
  type: long?
  inputBinding:
    prefix: --nthreads
- id: in_max_anchors
  doc: "Controls number of candidate segments returned by the complete set algorithm\n\
    Default is 10.  Can be increased to higher values to solve alignments with\nevenly\
    \ spaced mismatches at close distances.  However, higher values will\ncause GSNAP\
    \ to run more slowly.  A value of 1000, for example, slows down\nthe program by\
    \ a factor of 10 or so.  Therefore, change this value only if\nabsolutely necessary."
  type: long?
  inputBinding:
    prefix: --max-anchors
- id: in_find_dna_chimeras
  doc: "Look for distant splicing involving poor splice sites (0=no, 1=yes)\nIf not\
    \ specified, then default is to be on unless only known splicing\nis desired (--use-splicing\
    \ is specified and --novelsplicing is off)"
  type: long?
  inputBinding:
    prefix: --find-dna-chimeras
- id: in_novel_splicing
  doc: Look for novel splicing (0=no (default), 1=yes)
  type: long?
  inputBinding:
    prefix: --novelsplicing
- id: in_splicing_dir
  doc: "Directory for splicing involving known sites or known introns,\nas specified\
    \ by the -s or --use-splicing flag (default is\ndirectory computed from -D and\
    \ -d flags).  Note: can\njust give full pathname to the -s flag instead."
  type: Directory?
  inputBinding:
    prefix: --splicingdir
- id: in_use_splicing
  doc: "Look for splicing involving known sites or known introns\n(in <STRING>.iit),\
    \ at short or long distances\nSee README instructions for the distinction between\
    \ known sites\nand known introns"
  type: string?
  inputBinding:
    prefix: --use-splicing
- id: in_am_big_splice_no_clip
  doc: "For ambiguous known splicing at ends of the read, do not clip at the\nsplice\
    \ site, but extend instead into the intron.  This flag makes\nsense only if you\
    \ provide the --use-splicing flag, and you are trying\nto eliminate all soft clipping\
    \ with --trim-mismatch-score=0"
  type: boolean?
  inputBinding:
    prefix: --ambig-splice-noclip
- id: in_local_splice_dist
  doc: Definition of local novel splicing event (default 200000)
  type: long?
  inputBinding:
    prefix: --localsplicedist
- id: in_novel_end_splice_dist
  doc: Distance to look for novel splices at the ends of reads (default 80000)
  type: long?
  inputBinding:
    prefix: --novelend-splicedist
- id: in_local_splice_penalty
  doc: Penalty for a local splice (default 0).  Counts against mismatches allowed
  type: long?
  inputBinding:
    prefix: --local-splice-penalty
- id: in_fusion_sensitivity
  doc: Sensitivity for finding fusions
  type: long?
  inputBinding:
    prefix: --fusion-sensitivity
- id: in_distant_splice_penalty
  doc: "Penalty for a distant splice (default 1).  A distant splice is one where\n\
    the intron length exceeds the value of -w, or --localsplicedist, or is an\ninversion,\
    \ scramble, or translocation between two different chromosomes\nCounts against\
    \ mismatches allowed"
  type: long?
  inputBinding:
    prefix: --distant-splice-penalty
- id: in_distant_splice_end_length
  doc: "Minimum length at end required for distant spliced alignments (default 20,\
    \ min\nallowed is the value of -k, or kmer size)"
  type: long?
  inputBinding:
    prefix: --distant-splice-endlength
- id: in_short_end_splice_end_length
  doc: "Minimum length at end required for short-end spliced alignments (default 2,\n\
    but unless known splice sites are provided with the -s flag, GSNAP may still\n\
    need the end length to be the value of -k, or kmer size to find a given splice"
  type: long?
  inputBinding:
    prefix: --shortend-splice-endlength
- id: in_distant_splice_identity
  doc: Minimum identity at end required for distant spliced alignments (default 0.95)
  type: double?
  inputBinding:
    prefix: --distant-splice-identity
- id: in_anti_stranded_penalty
  doc: "(Not currently implemented, since it leads to poor results)\nPenalty for antistranded\
    \ splicing when using stranded RNA-Seq protocols.\nA positive value, such as 1,\
    \ expects antisense on the first read\nand sense on the second read.  Default\
    \ is 0, which treats sense and antisense\nequally well"
  type: long?
  inputBinding:
    prefix: --antistranded-penalty
- id: in_merge_distant_same_chr
  doc: "Report distant splices on the same chromosome as a single splice, if possible.\n\
    Will produce a single SAM line instead of two SAM lines, which is also done\n\
    for translocations, inversions, and scramble events"
  type: boolean?
  inputBinding:
    prefix: --merge-distant-samechr
- id: in_pair_max_dna
  doc: "Max total genomic length for DNA-Seq paired reads, or other reads\nwithout\
    \ splicing (default 2000).  Used if -N or -s is not specified.\nThis value is\
    \ also used for circular chromosomes when splicing in\nlinear chromosomes is allowed"
  type: long?
  inputBinding:
    prefix: --pairmax-dna
- id: in_pair_max_rna
  doc: "Max total genomic length for RNA-Seq paired reads, or other reads\nthat could\
    \ have a splice (default 200000).  Used if -N or -s is specified.\nShould probably\
    \ match the value for -w, --localsplicedist."
  type: long?
  inputBinding:
    prefix: --pairmax-rna
- id: in_pair_expect
  doc: "Expected paired-end length, used for calling splices in medial part\nof paired-end\
    \ reads (default 500).  Was turned off in previous versions, but reinstated."
  type: long?
  inputBinding:
    prefix: --pairexpect
- id: in_pair_dev
  doc: "Allowable deviation from expected paired-end length, used for\ncalling splices\
    \ in medial part of paired-end reads (default 100).\nWas turned off in previous\
    \ versions, but reinstated."
  type: long?
  inputBinding:
    prefix: --pairdev
- id: in_quality_protocol
  doc: "Protocol for input quality scores.  Allowed values:\nillumina (ASCII 64-126)\
    \ (equivalent to -J 64 -j -31)\nsanger   (ASCII 33-126) (equivalent to -J 33 -j\
    \ 0)\nDefault is sanger (no quality print shift)\nSAM output files should have\
    \ quality scores in sanger protocol\nOr you can customize this behavior with these\
    \ flags:"
  type: long?
  inputBinding:
    prefix: --quality-protocol
- id: in_quality_zero_score
  doc: "FASTQ quality scores are zero at this ASCII value\n(default is 33 for sanger\
    \ protocol; for Illumina, select 64)"
  type: long?
  inputBinding:
    prefix: --quality-zero-score
- id: in_quality_print_shift
  doc: "Shift FASTQ quality scores by this amount in output\n(default is 0 for sanger\
    \ protocol; to change Illumina input\nto Sanger output, select -31)"
  type: long?
  inputBinding:
    prefix: --quality-print-shift
- id: in_n_paths
  doc: Maximum number of paths to print (default 100).
  type: long?
  inputBinding:
    prefix: --npaths
- id: in_quiet_if_excessive
  doc: "If more than maximum number of paths are found,\nthen nothing is printed."
  type: boolean?
  inputBinding:
    prefix: --quiet-if-excessive
- id: in_ordered
  doc: "Print output in same order as input (relevant\nonly if there is more than\
    \ one worker thread)"
  type: boolean?
  inputBinding:
    prefix: --ordered
- id: in_show_ref_diff
  doc: "For GSNAP output in SNP-tolerant alignment, shows all differences\nrelative\
    \ to the reference genome as lower case (otherwise, it shows\nall differences\
    \ relative to both the reference and alternate genome)"
  type: boolean?
  inputBinding:
    prefix: --show-refdiff
- id: in_clip_overlap
  doc: For paired-end reads whose alignments overlap, clip the overlapping region.
  type: boolean?
  inputBinding:
    prefix: --clip-overlap
- id: in_merge_overlap
  doc: For paired-end reads whose alignments overlap, merge the two ends into a single
    end (beta implementation)
  type: boolean?
  inputBinding:
    prefix: --merge-overlap
- id: in_print_snps
  doc: "Print detailed information about SNPs in reads (works only if -v also selected)\n\
    (not fully implemented yet)"
  type: boolean?
  inputBinding:
    prefix: --print-snps
- id: in_fails_only
  doc: Print only failed alignments, those with no results
  type: boolean?
  inputBinding:
    prefix: --failsonly
- id: in_no_fails
  doc: Exclude printing of failed alignments
  type: boolean?
  inputBinding:
    prefix: --nofails
- id: in_format
  doc: "Another format type, other than default.\nCurrently implemented: sam, m8 (BLAST\
    \ tabular format)"
  type: long?
  inputBinding:
    prefix: --format
- id: in_split_output
  doc: "Basename for multiple-file output, separately for nomapping,\nhalfmapping_uniq,\
    \ halfmapping_mult, unpaired_uniq, unpaired_mult,\npaired_uniq, paired_mult, concordant_uniq,\
    \ and concordant_mult results"
  type: File?
  inputBinding:
    prefix: --split-output
- id: in_output_file
  doc: File name for a single stream of output results.
  type: File?
  inputBinding:
    prefix: --output-file
- id: in_failed_input
  doc: "Print completely failed alignments as input FASTA or FASTQ format,\nto the\
    \ given file, appending .1 or .2, for paired-end data.\nIf the --split-output\
    \ flag is also given, this file is generated\nin addition to the output in the\
    \ .nomapping file."
  type: File?
  inputBinding:
    prefix: --failed-input
- id: in_append_output
  doc: "When --split-output or --failed-input is given, this flag will append output\n\
    to the existing files.  Otherwise, the default is to create new files."
  type: boolean?
  inputBinding:
    prefix: --append-output
- id: in_order_among_best
  doc: "Among alignments tied with the best score, order those alignments in this\
    \ order.\nAllowed values: genomic, random (default)"
  type: string?
  inputBinding:
    prefix: --order-among-best
- id: in_output_buffer_size
  doc: "Buffer size, in queries, for output thread (default 10000).  When the number\n\
    of results to be printed exceeds this size, the worker threads are halted\nuntil\
    \ the backlog is cleared"
  type: long?
  inputBinding:
    prefix: --output-buffer-size
- id: in_no_sam_headers
  doc: Do not print headers beginning with '@'
  type: boolean?
  inputBinding:
    prefix: --no-sam-headers
- id: in_add_paired_no_mappers
  doc: "Add nomapper lines as needed to make all paired-end results alternate\nbetween\
    \ first end and second end"
  type: boolean?
  inputBinding:
    prefix: --add-paired-nomappers
- id: in_paired_flag_means_concordant
  doc: "Whether the paired bit in the SAM flags means concordant only (1)\nor paired\
    \ plus concordant (0, default)"
  type: long?
  inputBinding:
    prefix: --paired-flag-means-concordant
- id: in_sam_headers_batch
  doc: Print headers only for this batch, as specified by -q
  type: long?
  inputBinding:
    prefix: --sam-headers-batch
- id: in_sam_hard_clip_use_s
  doc: Use S instead of H for hardclips
  type: boolean?
  inputBinding:
    prefix: --sam-hardclip-use-S
- id: in_sam_use_zero_m
  doc: "Insert 0M in CIGAR between adjacent insertions, deletions, and introns\nPicard\
    \ disallows 0M, other tools may require it"
  type: boolean?
  inputBinding:
    prefix: --sam-use-0M
- id: in_sam_extended_cigar
  doc: "Use extended CIGAR format (using X and = symbols instead of M,\nto indicate\
    \ matches and mismatches, respectively"
  type: boolean?
  inputBinding:
    prefix: --sam-extended-cigar
- id: in_sam_multiple_primaries
  doc: "Allows multiple alignments to be marked as primary if they\nhave equally good\
    \ mapping scores"
  type: boolean?
  inputBinding:
    prefix: --sam-multiple-primaries
- id: in_sam_sparse_secondaries
  doc: "For secondary alignments (in multiple mappings), uses '*' for SEQ\nand QUAL\
    \ fields, to give smaller file sizes.  However, the output\nwill give warnings\
    \ in Picard to give warnings and may not work\nwith downstream tools"
  type: File?
  inputBinding:
    prefix: --sam-sparse-secondaries
- id: in_force_xs_dir
  doc: "For RNA-Seq alignments, disallows XS:A:? when the sense direction\nis unclear,\
    \ and replaces this value arbitrarily with XS:A:+.\nMay be useful for some programs,\
    \ such as Cufflinks, that cannot\nhandle XS:A:?.  However, if you use this flag,\
    \ the reported value\nof XS:A:+ in these cases will not be meaningful."
  type: boolean?
  inputBinding:
    prefix: --force-xs-dir
- id: in_md_lowercase_snp
  doc: "In MD string, when known SNPs are given by the -v flag,\nprints difference\
    \ nucleotides as lower-case when they,\ndiffer from reference but match a known\
    \ alternate allele"
  type: boolean?
  inputBinding:
    prefix: --md-lowercase-snp
- id: in_extend_soft_clips
  doc: Extends alignments through soft clipped regions
  type: boolean?
  inputBinding:
    prefix: --extend-soft-clips
- id: in_action_if_cigar_error
  doc: "Action to take if there is a disagreement between CIGAR length and sequence\
    \ length\nAllowed values: ignore, warning (default), noprint, abort\nNote that\
    \ the noprint option does not print the CIGAR string at all if there\nis an error,\
    \ so it may break a SAM parser"
  type: boolean?
  inputBinding:
    prefix: --action-if-cigar-error
- id: in_read_group_id
  doc: Value to put into read-group id (RG-ID) field
  type: string?
  inputBinding:
    prefix: --read-group-id
- id: in_read_group_name
  doc: Value to put into read-group name (RG-SM) field
  type: string?
  inputBinding:
    prefix: --read-group-name
- id: in_read_group_library
  doc: Value to put into read-group library (RG-LB) field
  type: string?
  inputBinding:
    prefix: --read-group-library
- id: in_read_group_platform
  doc: Value to put into read-group library (RG-PL) field
  type: string?
  inputBinding:
    prefix: --read-group-platform
- id: in_check
  doc: Check compiler assumptions
  type: boolean?
  inputBinding:
    prefix: --check
- id: in_hash_offsets_hash
  doc: "Hash offsets  Hash positions  Genome          Local hash offsets  Local hash\
    \ positions\n0      allocate      mmap            mmap            allocate   \
    \         mmap\n1      allocate      mmap & preload  mmap            allocate\
    \            mmap & preload\n2      allocate      mmap & preload  mmap & preload\
    \  allocate            mmap & preload\n3      allocate      allocate        mmap\
    \ & preload  allocate            allocate"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_split_output
  doc: "Basename for multiple-file output, separately for nomapping,\nhalfmapping_uniq,\
    \ halfmapping_mult, unpaired_uniq, unpaired_mult,\npaired_uniq, paired_mult, concordant_uniq,\
    \ and concordant_mult results"
  type: File?
  outputBinding:
    glob: $(inputs.in_split_output)
- id: out_output_file
  doc: File name for a single stream of output results.
  type: File?
  outputBinding:
    glob: $(inputs.in_output_file)
- id: out_sam_sparse_secondaries
  doc: "For secondary alignments (in multiple mappings), uses '*' for SEQ\nand QUAL\
    \ fields, to give smaller file sizes.  However, the output\nwill give warnings\
    \ in Picard to give warnings and may not work\nwith downstream tools"
  type: File?
  outputBinding:
    glob: $(inputs.in_sam_sparse_secondaries)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/gmap:2021.02.22--pl526h2f06484_0
cwlVersion: v1.1
baseCommand:
- gsnap
