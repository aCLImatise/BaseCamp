class: CommandLineTool
id: gsnap.sse42.cwl
inputs:
- id: dir
  doc: Genome directory.  Default (as specified by --with-gmapdb to the configure
    program) is /tmp/tmp6ae0onfx/share
  type: Directory
  inputBinding:
    prefix: --dir
- id: db
  doc: Genome database
  type: string
  inputBinding:
    prefix: --db
- id: use_local_hash
  doc: Whether to use the local hash tables, which help with finding extensions to
    the ends of alignments in the presence of splicing or indels (0=no, 1=yes if available
    (default))
  type: long
  inputBinding:
    prefix: --use-local-hash
- id: transcript_dir
  doc: Transcriptome directory.  Default is the value for --dir above
  type: Directory
  inputBinding:
    prefix: --transcriptdir
- id: transcript_db
  doc: Transcriptome database
  type: string
  inputBinding:
    prefix: --transcriptdb
- id: use_transcriptome_only
  doc: Use only the transcriptome index and not the genome index
  type: boolean
  inputBinding:
    prefix: --use-transcriptome-only
- id: km_er
  doc: 'kmer size to use in genome database (allowed values: 16 or less) If not specified,
    the program will find the highest available kmer size in the genome database'
  type: long
  inputBinding:
    prefix: --kmer
- id: sampling
  doc: Sampling to use in genome database.  If not specified, the program will find
    the smallest available sampling value in the genome database within selected k-mer
    size
  type: long
  inputBinding:
    prefix: --sampling
- id: part
  doc: /INT             Process only the i-th out of every n sequences e.g., 0/100
    or 99/100 (useful for distributing jobs to a computer farm).
  type: long
  inputBinding:
    prefix: --part
- id: input_buffer_size
  doc: Size of input buffer (program reads this many sequences at a time for efficiency)
    (default 1000)
  type: long
  inputBinding:
    prefix: --input-buffer-size
- id: barcode_length
  doc: Amount of barcode to remove from start of every read before alignment (default
    0)
  type: long
  inputBinding:
    prefix: --barcode-length
- id: end_trim_length
  doc: Amount of trim to remove from the end of every read before alignment (default
    0)
  type: long
  inputBinding:
    prefix: --endtrim-length
- id: orientation
  doc: 'Orientation of paired-end reads Allowed values: FR (fwd-rev, or typical Illumina;
    default), RF (rev-fwd, for circularized inserts), or FF (fwd-fwd, same strand)'
  type: string
  inputBinding:
    prefix: --orientation
- id: fast_q_id_start
  doc: Starting position of identifier in FASTQ header, space-delimited (>= 1)
  type: long
  inputBinding:
    prefix: --fastq-id-start
- id: fast_q_id_end
  doc: 'Ending position of identifier in FASTQ header, space-delimited (>= 1) Examples:
    @HWUSI-EAS100R:6:73:941:1973#0/1 start=1, end=1 (default) => identifier is HWUSI-EAS100R:6:73:941:1973#0
    @SRR001666.1 071112_SLXA-EAS1_s_7:5:1:817:345 length=36 start=1, end=1  => identifier
    is SRR001666.1 start=2, end=2  => identifier is 071112_SLXA-EAS1_s_7:5:1:817:345
    start=1, end=2  => identifier is SRR001666.1 071112_SLXA-EAS1_s_7:5:1:817:345'
  type: long
  inputBinding:
    prefix: --fastq-id-end
- id: force_single_end
  doc: When multiple FASTQ files are provided on the command line, GSNAP assumes they
    are matching paired-end files.  This flag treats each file as single-end.
  type: boolean
  inputBinding:
    prefix: --force-single-end
- id: filter_chastity
  doc: "Skips reads marked by the Illumina chastity program.  Expecting a string after\
    \ the accession having a 'Y' after the first colon, like this: @accession 1:Y:0:CTTGTA\
    \ where the 'Y' signifies filtering by chastity. Values: off (default), either,\
    \ both.  For 'either', a 'Y' on either end of a paired-end read will be filtered.\
    \  For 'both', a 'Y' is required on both ends of a paired-end read (or on the\
    \ only end of a single-end read)."
  type: string
  inputBinding:
    prefix: --filter-chastity
- id: allow_pe_name_mismatch
  doc: Allows accession names of reads to mismatch in paired-end files
  type: boolean
  inputBinding:
    prefix: --allow-pe-name-mismatch
- id: interleaved
  doc: Input is in interleaved format (one read per line, tab-delimited
  type: boolean
  inputBinding:
    prefix: --interleaved
- id: gunzip
  doc: Uncompress gzipped input files
  type: boolean
  inputBinding:
    prefix: --gunzip
- id: bunzip2
  doc: Uncompress bzip2-compressed input files
  type: boolean
  inputBinding:
    prefix: --bunzip2
- id: use_shared_memory
  doc: If 1 (default), then allocated memory is shared among all processes on this
    node.  If 0, then each process has private allocated memory
  type: long
  inputBinding:
    prefix: --use-shared-memory
- id: preload_shared_memory
  doc: Load files indicated by --batch mode into shared memory for use by other GMAP/GSNAP
    processes on this node, and then exit.  Ignore any input files.
  type: boolean
  inputBinding:
    prefix: --preload-shared-memory
- id: unload_shared_memory
  doc: Unload files indicated by --batch mode into shared memory, or allow them to
    be unloaded when existing GMAP/GSNAP processes on this node are finished with
    them.  Ignore any input files.
  type: boolean
  inputBinding:
    prefix: --unload-shared-memory
- id: max_mismatches
  doc: Maximum number of mismatches allowed (if not specified, then GSNAP tries to
    find the best possible match in the genome) If specified between 0.0 and 1.0,
    then treated as a fraction of each read length.  Otherwise, treated as an integral
    number of mismatches (including indel and splicing penalties). Default is 0.10
    for DNA-Seq and 0.99 for RNA-Seq (to allow for large soft clips).
  type: double
  inputBinding:
    prefix: --max-mismatches
- id: min_coverage
  doc: Minimum coverage required for an alignment. If specified between 0.0 and 1.0,
    then treated as a fraction of each read length.  Otherwise, treated as an integral
    number of base pairs.  Default value is 0.0.
  type: double
  inputBinding:
    prefix: --min-coverage
- id: ignore_trim_in_filtering
  doc: Whether to ignore trimmed ends in applying the --max-mismatches parameter.  Default
    for RNA-Seq is 1 (yes), so we can allow for reads that align past the ends of
    an exon.  Default for DNA-Seq is 0 (no). For RNA-Seq, trimmed ends should be ignored,
    because trimming is performed at probable splice sites, to allow for reads that
    align past the ends of an exon.
  type: long
  inputBinding:
    prefix: --ignore-trim-in-filtering
- id: query_unk_mismatch
  doc: Whether to count unknown (N) characters in the query as a mismatch (0=no (default),
    1=yes)
  type: long
  inputBinding:
    prefix: --query-unk-mismatch
- id: genome_unk_mismatch
  doc: Whether to count unknown (N) characters in the genome as a mismatch (0=no,
    1=yes (default))
  type: long
  inputBinding:
    prefix: --genome-unk-mismatch
- id: in_del_penalty
  doc: Penalty for an indel (default 2). Counts against mismatches allowed.  To find
    indels, make indel-penalty less than or equal to max-mismatches. A value < 2 can
    lead to false positives at read ends
  type: long
  inputBinding:
    prefix: --indel-penalty
- id: in_del_end_length
  doc: Minimum length at end required for indel alignments (default 4)
  type: long
  inputBinding:
    prefix: --indel-endlength
- id: max_middle_insertions
  doc: Maximum number of middle insertions allowed (default is readlength - indel-endlength)
  type: long
  inputBinding:
    prefix: --max-middle-insertions
- id: max_middle_deletions
  doc: Maximum number of middle deletions allowed (default 30)
  type: long
  inputBinding:
    prefix: --max-middle-deletions
- id: max_end_insertions
  doc: Maximum number of end insertions allowed (default 3)
  type: long
  inputBinding:
    prefix: --max-end-insertions
- id: max_end_deletions
  doc: Maximum number of end deletions allowed (default 6)
  type: long
  inputBinding:
    prefix: --max-end-deletions
- id: suboptimal_levels
  doc: Report suboptimal hits beyond best hit (default 0) All hits with best score
    plus suboptimal-levels are reported
  type: long
  inputBinding:
    prefix: --suboptimal-levels
- id: adapter_strip
  doc: 'Method for removing adapters from reads.  Currently allowed values: off, paired.
    Default is "off".  To turn on, specify "paired", which removes adapters from paired-end
    reads if they appear to be present.'
  type: string
  inputBinding:
    prefix: --adapter-strip
- id: trim_in_del_score
  doc: 'Score to use for indels when trimming at ends.  To turn off trimming, specify
    0.  Default is -2 for both RNA-Seq and DNA-Seq.  Warning: Turning trimming off
    in RNA-Seq can give false positive indels at the ends of reads'
  type: long
  inputBinding:
    prefix: --trim-indel-score
- id: snps_dir
  doc: Directory for SNPs index files (created using snpindex) (default is location
    of genome index files specified using -D and -d)
  type: string
  inputBinding:
    prefix: --snpsdir
- id: use_snps
  doc: Use database containing known SNPs (in <STRING>.iit, built previously using
    snpindex) for tolerance to SNPs
  type: string
  inputBinding:
    prefix: --use-snps
- id: c_met_dir
  doc: Directory for methylcytosine index files (created using cmetindex) (default
    is location of genome index files specified using -D, -V, and -d)
  type: string
  inputBinding:
    prefix: --cmetdir
- id: atoi_dir
  doc: Directory for A-to-I RNA editing index files (created using atoiindex) (default
    is location of genome index files specified using -D, -V, and -d)
  type: string
  inputBinding:
    prefix: --atoidir
- id: mode
  doc: 'Alignment mode: standard (default), cmet-stranded, cmet-nonstranded, atoi-stranded,
    atoi-nonstranded, ttoc-stranded, or ttoc-nonstranded. Non-standard modes requires
    you to have previously run the cmetindex or atoiindex programs (which also cover
    the ttoc modes) on the genome'
  type: string
  inputBinding:
    prefix: --mode
- id: n_threads
  doc: Number of worker threads
  type: long
  inputBinding:
    prefix: --nthreads
- id: max_anchors
  doc: Controls number of candidate segments returned by the complete set algorithm
    Default is 10.  Can be increased to higher values to solve alignments with evenly
    spaced mismatches at close distances.  However, higher values will cause GSNAP
    to run more slowly.  A value of 1000, for example, slows down the program by a
    factor of 10 or so.  Therefore, change this value only if absolutely necessary.
  type: long
  inputBinding:
    prefix: --max-anchors
- id: find_dna_chimeras
  doc: Look for distant splicing involving poor splice sites (0=no, 1=yes (default))
    Current implementation improves even RNA-Seq alignments at poor splice sites so
    it is now on by default.
  type: long
  inputBinding:
    prefix: --find-dna-chimeras
- id: novel_splicing
  doc: Look for novel splicing (0=no (default), 1=yes)
  type: long
  inputBinding:
    prefix: --novelsplicing
- id: splicing_dir
  doc: 'Directory for splicing involving known sites or known introns, as specified
    by the -s or --use-splicing flag (default is directory computed from -D and -d
    flags).  Note: can just give full pathname to the -s flag instead.'
  type: string
  inputBinding:
    prefix: --splicingdir
- id: use_splicing
  doc: Look for splicing involving known sites or known introns (in <STRING>.iit),
    at short or long distances See README instructions for the distinction between
    known sites and known introns
  type: string
  inputBinding:
    prefix: --use-splicing
- id: am_big_splice_no_clip
  doc: For ambiguous known splicing at ends of the read, do not clip at the splice
    site, but extend instead into the intron.  This flag makes sense only if you provide
    the --use-splicing flag, and you are trying to eliminate all soft clipping with
    --trim-mismatch-score=0
  type: boolean
  inputBinding:
    prefix: --ambig-splice-noclip
- id: local_splice_dist
  doc: Definition of local novel splicing event (default 200000)
  type: long
  inputBinding:
    prefix: --localsplicedist
- id: novel_end_splice_dist
  doc: Distance to look for novel splices at the ends of reads (default 80000)
  type: long
  inputBinding:
    prefix: --novelend-splicedist
- id: local_splice_penalty
  doc: Penalty for a local splice (default 0).  Counts against mismatches allowed
  type: long
  inputBinding:
    prefix: --local-splice-penalty
- id: distant_splice_penalty
  doc: Penalty for a distant splice (default 1).  A distant splice is one where the
    intron length exceeds the value of -w, or --localsplicedist, or is an inversion,
    scramble, or translocation between two different chromosomes Counts against mismatches
    allowed
  type: long
  inputBinding:
    prefix: --distant-splice-penalty
- id: distant_splice_end_length
  doc: Minimum length at end required for distant spliced alignments (default 20,
    min allowed is the value of -k, or kmer size)
  type: long
  inputBinding:
    prefix: --distant-splice-endlength
- id: short_end_splice_end_length
  doc: Minimum length at end required for short-end spliced alignments (default 2,
    but unless known splice sites are provided with the -s flag, GSNAP may still need
    the end length to be the value of -k, or kmer size to find a given splice
  type: long
  inputBinding:
    prefix: --shortend-splice-endlength
- id: distant_splice_identity
  doc: Minimum identity at end required for distant spliced alignments (default 0.95)
  type: double
  inputBinding:
    prefix: --distant-splice-identity
- id: anti_stranded_penalty
  doc: (Not currently implemented, since it leads to poor results) Penalty for antistranded
    splicing when using stranded RNA-Seq protocols. A positive value, such as 1, expects
    antisense on the first read and sense on the second read.  Default is 0, which
    treats sense and antisense equally well
  type: long
  inputBinding:
    prefix: --antistranded-penalty
- id: merge_distant_same_chr
  doc: Report distant splices on the same chromosome as a single splice, if possible.
    Will produce a single SAM line instead of two SAM lines, which is also done for
    translocations, inversions, and scramble events
  type: boolean
  inputBinding:
    prefix: --merge-distant-samechr
- id: pair_max_dna
  doc: Max total genomic length for DNA-Seq paired reads, or other reads without splicing
    (default 1000).  Used if -N or -s is not specified. This value is also used for
    circular chromosomes when splicing in linear chromosomes is allowed
  type: long
  inputBinding:
    prefix: --pairmax-dna
- id: pair_max_rna
  doc: Max total genomic length for RNA-Seq paired reads, or other reads that could
    have a splice (default 200000).  Used if -N or -s is specified. Should probably
    match the value for -w, --localsplicedist.
  type: long
  inputBinding:
    prefix: --pairmax-rna
- id: pair_expect
  doc: Expected paired-end length, used for calling splices in medial part of paired-end
    reads (default 500).  Was turned off in previous versions, but reinstated.
  type: long
  inputBinding:
    prefix: --pairexpect
- id: pair_dev
  doc: Allowable deviation from expected paired-end length, used for calling splices
    in medial part of paired-end reads (default 100). Was turned off in previous versions,
    but reinstated.
  type: long
  inputBinding:
    prefix: --pairdev
- id: quality_protocol
  doc: 'Protocol for input quality scores.  Allowed values: illumina (ASCII 64-126)
    (equivalent to -J 64 -j -31) sanger   (ASCII 33-126) (equivalent to -J 33 -j 0)
    Default is sanger (no quality print shift) SAM output files should have quality
    scores in sanger protocol Or you can customize this behavior with these flags:'
  type: string
  inputBinding:
    prefix: --quality-protocol
- id: quality_zero_score
  doc: FASTQ quality scores are zero at this ASCII value (default is 33 for sanger
    protocol; for Illumina, select 64)
  type: long
  inputBinding:
    prefix: --quality-zero-score
- id: quality_print_shift
  doc: Shift FASTQ quality scores by this amount in output (default is 0 for sanger
    protocol; to change Illumina input to Sanger output, select -31)
  type: long
  inputBinding:
    prefix: --quality-print-shift
- id: n_paths
  doc: Maximum number of paths to print (default 100).
  type: long
  inputBinding:
    prefix: --npaths
- id: quiet_if_excessive
  doc: If more than maximum number of paths are found, then nothing is printed.
  type: boolean
  inputBinding:
    prefix: --quiet-if-excessive
- id: ordered
  doc: Print output in same order as input (relevant only if there is more than one
    worker thread)
  type: boolean
  inputBinding:
    prefix: --ordered
- id: show_ref_diff
  doc: For GSNAP output in SNP-tolerant alignment, shows all differences relative
    to the reference genome as lower case (otherwise, it shows all differences relative
    to both the reference and alternate genome)
  type: boolean
  inputBinding:
    prefix: --show-refdiff
- id: clip_overlap
  doc: For paired-end reads whose alignments overlap, clip the overlapping region.
  type: boolean
  inputBinding:
    prefix: --clip-overlap
- id: merge_overlap
  doc: For paired-end reads whose alignments overlap, merge the two ends into a single
    end (beta implementation)
  type: boolean
  inputBinding:
    prefix: --merge-overlap
- id: print_snps
  doc: Print detailed information about SNPs in reads (works only if -v also selected)
    (not fully implemented yet)
  type: boolean
  inputBinding:
    prefix: --print-snps
- id: fails_only
  doc: Print only failed alignments, those with no results
  type: boolean
  inputBinding:
    prefix: --failsonly
- id: no_fails
  doc: Exclude printing of failed alignments
  type: boolean
  inputBinding:
    prefix: --nofails
- id: format
  doc: 'Another format type, other than default. Currently implemented: sam, m8 (BLAST
    tabular format)'
  type: string
  inputBinding:
    prefix: --format
- id: split_output
  doc: Basename for multiple-file output, separately for nomapping, halfmapping_uniq,
    halfmapping_mult, unpaired_uniq, unpaired_mult, paired_uniq, paired_mult, concordant_uniq,
    and concordant_mult results
  type: string
  inputBinding:
    prefix: --split-output
- id: output_file
  doc: File name for a single stream of output results.
  type: string
  inputBinding:
    prefix: --output-file
- id: failed_input
  doc: Print completely failed alignments as input FASTA or FASTQ format, to the given
    file, appending .1 or .2, for paired-end data. If the --split-output flag is also
    given, this file is generated in addition to the output in the .nomapping file.
  type: string
  inputBinding:
    prefix: --failed-input
- id: append_output
  doc: When --split-output or --failed-input is given, this flag will append output
    to the existing files.  Otherwise, the default is to create new files.
  type: boolean
  inputBinding:
    prefix: --append-output
- id: order_among_best
  doc: 'Among alignments tied with the best score, order those alignments in this
    order. Allowed values: genomic, random (default)'
  type: string
  inputBinding:
    prefix: --order-among-best
- id: output_buffer_size
  doc: Buffer size, in queries, for output thread (default 1000).  When the number
    of results to be printed exceeds this size, the worker threads are halted until
    the backlog is cleared
  type: long
  inputBinding:
    prefix: --output-buffer-size
- id: sam_headers_batch
  doc: Print headers only for this batch, as specified by -q
  type: long
  inputBinding:
    prefix: --sam-headers-batch
- id: sam_hard_clip_use_s
  doc: Use S instead of H for hardclips
  type: boolean
  inputBinding:
    prefix: --sam-hardclip-use-S
- id: sam_use_0m
  doc: Insert 0M in CIGAR between adjacent insertions, deletions, and introns Picard
    disallows 0M, other tools may require it
  type: boolean
  inputBinding:
    prefix: --sam-use-0M
- id: sam_extended_cigar
  doc: Use extended CIGAR format (using X and = symbols instead of M, to indicate
    matches and mismatches, respectively
  type: boolean
  inputBinding:
    prefix: --sam-extended-cigar
- id: sam_multiple_primaries
  doc: Allows multiple alignments to be marked as primary if they have equally good
    mapping scores
  type: boolean
  inputBinding:
    prefix: --sam-multiple-primaries
- id: sam_sparse_secondaries
  doc: For secondary alignments (in multiple mappings), uses '*' for SEQ and QUAL
    fields, to give smaller file sizes.  However, the output will give warnings in
    Picard to give warnings and may not work with downstream tools
  type: boolean
  inputBinding:
    prefix: --sam-sparse-secondaries
- id: force_xs_dir
  doc: For RNA-Seq alignments, disallows XS:A:? when the sense direction is unclear,
    and replaces this value arbitrarily with XS:A:+. May be useful for some programs,
    such as Cufflinks, that cannot handle XS:A:?.  However, if you use this flag,
    the reported value of XS:A:+ in these cases will not be meaningful.
  type: boolean
  inputBinding:
    prefix: --force-xs-dir
- id: md_lowercase_snp
  doc: In MD string, when known SNPs are given by the -v flag, prints difference nucleotides
    as lower-case when they, differ from reference but match a known alternate allele
  type: boolean
  inputBinding:
    prefix: --md-lowercase-snp
- id: extend_soft_clips
  doc: Extends alignments through soft clipped regions
  type: boolean
  inputBinding:
    prefix: --extend-soft-clips
- id: action_if_cigar_error
  doc: 'Action to take if there is a disagreement between CIGAR length and sequence
    length Allowed values: ignore, warning (default), noprint, abort Note that the
    noprint option does not print the CIGAR string at all if there is an error, so
    it may break a SAM parser'
  type: boolean
  inputBinding:
    prefix: --action-if-cigar-error
- id: read_group_id
  doc: Value to put into read-group id (RG-ID) field
  type: string
  inputBinding:
    prefix: --read-group-id
- id: read_group_name
  doc: Value to put into read-group name (RG-SM) field
  type: string
  inputBinding:
    prefix: --read-group-name
- id: read_group_library
  doc: Value to put into read-group library (RG-LB) field
  type: string
  inputBinding:
    prefix: --read-group-library
- id: read_group_platform
  doc: Value to put into read-group library (RG-PL) field
  type: string
  inputBinding:
    prefix: --read-group-platform
- id: check
  doc: Check compiler assumptions
  type: boolean
  inputBinding:
    prefix: --check
outputs: []
cwlVersion: v1.1
baseCommand:
- gsnap.sse42
