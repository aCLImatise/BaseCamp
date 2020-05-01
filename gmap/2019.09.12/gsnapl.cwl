#!/usr/bin/env cwl-runner

baseCommand:
- gsnapl.sse42
class: CommandLineTool
cwlVersion: v1.0
id: gsnapl.sse42
inputs:
- doc: Genome directory.  Default (as specified by --with-gmapdb to the configure
    program) is /tmp/tmp6ae0onfx/share
  id: dir
  inputBinding:
    prefix: --dir
  type: Directory
- doc: Genome database
  id: db
  inputBinding:
    prefix: --db
  type: string
- doc: Whether to use the local hash tables, which help with finding extensions to
    the ends of alignments in the presence of splicing or indels (0=no, 1=yes if available
    (default))
  id: use_local_hash
  inputBinding:
    prefix: --use-local-hash
  type: long
- doc: Transcriptome directory.  Default is the value for --dir above
  id: transcript_dir
  inputBinding:
    prefix: --transcriptdir
  type: Directory
- doc: Transcriptome database
  id: transcript_db
  inputBinding:
    prefix: --transcriptdb
  type: string
- doc: Use only the transcriptome index and not the genome index
  id: use_transcriptome_only
  inputBinding:
    prefix: --use-transcriptome-only
  type: boolean
- doc: 'kmer size to use in genome database (allowed values: 16 or less) If not specified,
    the program will find the highest available kmer size in the genome database'
  id: km_er
  inputBinding:
    prefix: --kmer
  type: long
- doc: Sampling to use in genome database.  If not specified, the program will find
    the smallest available sampling value in the genome database within selected k-mer
    size
  id: sampling
  inputBinding:
    prefix: --sampling
  type: long
- doc: /INT             Process only the i-th out of every n sequences e.g., 0/100
    or 99/100 (useful for distributing jobs to a computer farm).
  id: part
  inputBinding:
    prefix: --part
  type: long
- doc: Size of input buffer (program reads this many sequences at a time for efficiency)
    (default 1000)
  id: input_buffer_size
  inputBinding:
    prefix: --input-buffer-size
  type: long
- doc: Amount of barcode to remove from start of every read before alignment (default
    0)
  id: barcode_length
  inputBinding:
    prefix: --barcode-length
  type: long
- doc: Amount of trim to remove from the end of every read before alignment (default
    0)
  id: end_trim_length
  inputBinding:
    prefix: --endtrim-length
  type: long
- doc: 'Orientation of paired-end reads Allowed values: FR (fwd-rev, or typical Illumina;
    default), RF (rev-fwd, for circularized inserts), or FF (fwd-fwd, same strand)'
  id: orientation
  inputBinding:
    prefix: --orientation
  type: string
- doc: Starting position of identifier in FASTQ header, space-delimited (>= 1)
  id: fast_q_id_start
  inputBinding:
    prefix: --fastq-id-start
  type: long
- doc: 'Ending position of identifier in FASTQ header, space-delimited (>= 1) Examples:
    @HWUSI-EAS100R:6:73:941:1973#0/1 start=1, end=1 (default) => identifier is HWUSI-EAS100R:6:73:941:1973#0
    @SRR001666.1 071112_SLXA-EAS1_s_7:5:1:817:345 length=36 start=1, end=1  => identifier
    is SRR001666.1 start=2, end=2  => identifier is 071112_SLXA-EAS1_s_7:5:1:817:345
    start=1, end=2  => identifier is SRR001666.1 071112_SLXA-EAS1_s_7:5:1:817:345'
  id: fast_q_id_end
  inputBinding:
    prefix: --fastq-id-end
  type: long
- doc: When multiple FASTQ files are provided on the command line, GSNAP assumes they
    are matching paired-end files.  This flag treats each file as single-end.
  id: force_single_end
  inputBinding:
    prefix: --force-single-end
  type: boolean
- doc: "Skips reads marked by the Illumina chastity program.  Expecting a string after\
    \ the accession having a 'Y' after the first colon, like this: @accession 1:Y:0:CTTGTA\
    \ where the 'Y' signifies filtering by chastity. Values: off (default), either,\
    \ both.  For 'either', a 'Y' on either end of a paired-end read will be filtered.\
    \  For 'both', a 'Y' is required on both ends of a paired-end read (or on the\
    \ only end of a single-end read)."
  id: filter_chastity
  inputBinding:
    prefix: --filter-chastity
  type: string
- doc: Allows accession names of reads to mismatch in paired-end files
  id: allow_pe_name_mismatch
  inputBinding:
    prefix: --allow-pe-name-mismatch
  type: boolean
- doc: Input is in interleaved format (one read per line, tab-delimited
  id: interleaved
  inputBinding:
    prefix: --interleaved
  type: boolean
- doc: Uncompress gzipped input files
  id: gunzip
  inputBinding:
    prefix: --gunzip
  type: boolean
- doc: Uncompress bzip2-compressed input files
  id: bunzip2
  inputBinding:
    prefix: --bunzip2
  type: boolean
- doc: If 1 (default), then allocated memory is shared among all processes on this
    node.  If 0, then each process has private allocated memory
  id: use_shared_memory
  inputBinding:
    prefix: --use-shared-memory
  type: long
- doc: Load files indicated by --batch mode into shared memory for use by other GMAP/GSNAP
    processes on this node, and then exit.  Ignore any input files.
  id: preload_shared_memory
  inputBinding:
    prefix: --preload-shared-memory
  type: boolean
- doc: Unload files indicated by --batch mode into shared memory, or allow them to
    be unloaded when existing GMAP/GSNAP processes on this node are finished with
    them.  Ignore any input files.
  id: unload_shared_memory
  inputBinding:
    prefix: --unload-shared-memory
  type: boolean
- doc: Maximum number of mismatches allowed (if not specified, then GSNAP tries to
    find the best possible match in the genome) If specified between 0.0 and 1.0,
    then treated as a fraction of each read length.  Otherwise, treated as an integral
    number of mismatches (including indel and splicing penalties). Default is 0.10
    for DNA-Seq and 0.99 for RNA-Seq (to allow for large soft clips).
  id: max_mismatches
  inputBinding:
    prefix: --max-mismatches
  type: double
- doc: Minimum coverage required for an alignment. If specified between 0.0 and 1.0,
    then treated as a fraction of each read length.  Otherwise, treated as an integral
    number of base pairs.  Default value is 0.0.
  id: min_coverage
  inputBinding:
    prefix: --min-coverage
  type: double
- doc: Whether to ignore trimmed ends in applying the --max-mismatches parameter.  Default
    for RNA-Seq is 1 (yes), so we can allow for reads that align past the ends of
    an exon.  Default for DNA-Seq is 0 (no). For RNA-Seq, trimmed ends should be ignored,
    because trimming is performed at probable splice sites, to allow for reads that
    align past the ends of an exon.
  id: ignore_trim_in_filtering
  inputBinding:
    prefix: --ignore-trim-in-filtering
  type: long
- doc: Whether to count unknown (N) characters in the query as a mismatch (0=no (default),
    1=yes)
  id: query_unk_mismatch
  inputBinding:
    prefix: --query-unk-mismatch
  type: long
- doc: Whether to count unknown (N) characters in the genome as a mismatch (0=no,
    1=yes (default))
  id: genome_unk_mismatch
  inputBinding:
    prefix: --genome-unk-mismatch
  type: long
- doc: Penalty for an indel (default 2). Counts against mismatches allowed.  To find
    indels, make indel-penalty less than or equal to max-mismatches. A value < 2 can
    lead to false positives at read ends
  id: in_del_penalty
  inputBinding:
    prefix: --indel-penalty
  type: long
- doc: Minimum length at end required for indel alignments (default 4)
  id: in_del_end_length
  inputBinding:
    prefix: --indel-endlength
  type: long
- doc: Maximum number of middle insertions allowed (default is readlength - indel-endlength)
  id: max_middle_insertions
  inputBinding:
    prefix: --max-middle-insertions
  type: long
- doc: Maximum number of middle deletions allowed (default 30)
  id: max_middle_deletions
  inputBinding:
    prefix: --max-middle-deletions
  type: long
- doc: Maximum number of end insertions allowed (default 3)
  id: max_end_insertions
  inputBinding:
    prefix: --max-end-insertions
  type: long
- doc: Maximum number of end deletions allowed (default 6)
  id: max_end_deletions
  inputBinding:
    prefix: --max-end-deletions
  type: long
- doc: Report suboptimal hits beyond best hit (default 0) All hits with best score
    plus suboptimal-levels are reported
  id: suboptimal_levels
  inputBinding:
    prefix: --suboptimal-levels
  type: long
- doc: 'Method for removing adapters from reads.  Currently allowed values: off, paired.
    Default is "off".  To turn on, specify "paired", which removes adapters from paired-end
    reads if they appear to be present.'
  id: adapter_strip
  inputBinding:
    prefix: --adapter-strip
  type: string
- doc: 'Score to use for indels when trimming at ends.  To turn off trimming, specify
    0.  Default is -2 for both RNA-Seq and DNA-Seq.  Warning: Turning trimming off
    in RNA-Seq can give false positive indels at the ends of reads'
  id: trim_in_del_score
  inputBinding:
    prefix: --trim-indel-score
  type: long
- doc: Directory for SNPs index files (created using snpindex) (default is location
    of genome index files specified using -D and -d)
  id: snps_dir
  inputBinding:
    prefix: --snpsdir
  type: string
- doc: Use database containing known SNPs (in <STRING>.iit, built previously using
    snpindex) for tolerance to SNPs
  id: use_snps
  inputBinding:
    prefix: --use-snps
  type: string
- doc: Directory for methylcytosine index files (created using cmetindex) (default
    is location of genome index files specified using -D, -V, and -d)
  id: c_met_dir
  inputBinding:
    prefix: --cmetdir
  type: string
- doc: Directory for A-to-I RNA editing index files (created using atoiindex) (default
    is location of genome index files specified using -D, -V, and -d)
  id: atoi_dir
  inputBinding:
    prefix: --atoidir
  type: string
- doc: 'Alignment mode: standard (default), cmet-stranded, cmet-nonstranded, atoi-stranded,
    atoi-nonstranded, ttoc-stranded, or ttoc-nonstranded. Non-standard modes requires
    you to have previously run the cmetindex or atoiindex programs (which also cover
    the ttoc modes) on the genome'
  id: mode
  inputBinding:
    prefix: --mode
  type: string
- doc: Number of worker threads
  id: n_threads
  inputBinding:
    prefix: --nthreads
  type: long
- doc: Controls number of candidate segments returned by the complete set algorithm
    Default is 10.  Can be increased to higher values to solve alignments with evenly
    spaced mismatches at close distances.  However, higher values will cause GSNAP
    to run more slowly.  A value of 1000, for example, slows down the program by a
    factor of 10 or so.  Therefore, change this value only if absolutely necessary.
  id: max_anchors
  inputBinding:
    prefix: --max-anchors
  type: long
- doc: Look for distant splicing involving poor splice sites (0=no, 1=yes (default))
    Current implementation improves even RNA-Seq alignments at poor splice sites so
    it is now on by default.
  id: find_dna_chimeras
  inputBinding:
    prefix: --find-dna-chimeras
  type: long
- doc: Look for novel splicing (0=no (default), 1=yes)
  id: novel_splicing
  inputBinding:
    prefix: --novelsplicing
  type: long
- doc: 'Directory for splicing involving known sites or known introns, as specified
    by the -s or --use-splicing flag (default is directory computed from -D and -d
    flags).  Note: can just give full pathname to the -s flag instead.'
  id: splicing_dir
  inputBinding:
    prefix: --splicingdir
  type: string
- doc: Look for splicing involving known sites or known introns (in <STRING>.iit),
    at short or long distances See README instructions for the distinction between
    known sites and known introns
  id: use_splicing
  inputBinding:
    prefix: --use-splicing
  type: string
- doc: For ambiguous known splicing at ends of the read, do not clip at the splice
    site, but extend instead into the intron.  This flag makes sense only if you provide
    the --use-splicing flag, and you are trying to eliminate all soft clipping with
    --trim-mismatch-score=0
  id: am_big_splice_no_clip
  inputBinding:
    prefix: --ambig-splice-noclip
  type: boolean
- doc: Definition of local novel splicing event (default 200000)
  id: local_splice_dist
  inputBinding:
    prefix: --localsplicedist
  type: long
- doc: Distance to look for novel splices at the ends of reads (default 80000)
  id: novel_end_splice_dist
  inputBinding:
    prefix: --novelend-splicedist
  type: long
- doc: Penalty for a local splice (default 0).  Counts against mismatches allowed
  id: local_splice_penalty
  inputBinding:
    prefix: --local-splice-penalty
  type: long
- doc: Penalty for a distant splice (default 1).  A distant splice is one where the
    intron length exceeds the value of -w, or --localsplicedist, or is an inversion,
    scramble, or translocation between two different chromosomes Counts against mismatches
    allowed
  id: distant_splice_penalty
  inputBinding:
    prefix: --distant-splice-penalty
  type: long
- doc: Minimum length at end required for distant spliced alignments (default 20,
    min allowed is the value of -k, or kmer size)
  id: distant_splice_end_length
  inputBinding:
    prefix: --distant-splice-endlength
  type: long
- doc: Minimum length at end required for short-end spliced alignments (default 2,
    but unless known splice sites are provided with the -s flag, GSNAP may still need
    the end length to be the value of -k, or kmer size to find a given splice
  id: short_end_splice_end_length
  inputBinding:
    prefix: --shortend-splice-endlength
  type: long
- doc: Minimum identity at end required for distant spliced alignments (default 0.95)
  id: distant_splice_identity
  inputBinding:
    prefix: --distant-splice-identity
  type: double
- doc: (Not currently implemented, since it leads to poor results) Penalty for antistranded
    splicing when using stranded RNA-Seq protocols. A positive value, such as 1, expects
    antisense on the first read and sense on the second read.  Default is 0, which
    treats sense and antisense equally well
  id: anti_stranded_penalty
  inputBinding:
    prefix: --antistranded-penalty
  type: long
- doc: Report distant splices on the same chromosome as a single splice, if possible.
    Will produce a single SAM line instead of two SAM lines, which is also done for
    translocations, inversions, and scramble events
  id: merge_distant_same_chr
  inputBinding:
    prefix: --merge-distant-samechr
  type: boolean
- doc: Max total genomic length for DNA-Seq paired reads, or other reads without splicing
    (default 1000).  Used if -N or -s is not specified. This value is also used for
    circular chromosomes when splicing in linear chromosomes is allowed
  id: pair_max_dna
  inputBinding:
    prefix: --pairmax-dna
  type: long
- doc: Max total genomic length for RNA-Seq paired reads, or other reads that could
    have a splice (default 200000).  Used if -N or -s is specified. Should probably
    match the value for -w, --localsplicedist.
  id: pair_max_rna
  inputBinding:
    prefix: --pairmax-rna
  type: long
- doc: Expected paired-end length, used for calling splices in medial part of paired-end
    reads (default 500).  Was turned off in previous versions, but reinstated.
  id: pair_expect
  inputBinding:
    prefix: --pairexpect
  type: long
- doc: Allowable deviation from expected paired-end length, used for calling splices
    in medial part of paired-end reads (default 100). Was turned off in previous versions,
    but reinstated.
  id: pair_dev
  inputBinding:
    prefix: --pairdev
  type: long
- doc: 'Protocol for input quality scores.  Allowed values: illumina (ASCII 64-126)
    (equivalent to -J 64 -j -31) sanger   (ASCII 33-126) (equivalent to -J 33 -j 0)
    Default is sanger (no quality print shift) SAM output files should have quality
    scores in sanger protocol Or you can customize this behavior with these flags:'
  id: quality_protocol
  inputBinding:
    prefix: --quality-protocol
  type: string
- doc: FASTQ quality scores are zero at this ASCII value (default is 33 for sanger
    protocol; for Illumina, select 64)
  id: quality_zero_score
  inputBinding:
    prefix: --quality-zero-score
  type: long
- doc: Shift FASTQ quality scores by this amount in output (default is 0 for sanger
    protocol; to change Illumina input to Sanger output, select -31)
  id: quality_print_shift
  inputBinding:
    prefix: --quality-print-shift
  type: long
- doc: Maximum number of paths to print (default 100).
  id: n_paths
  inputBinding:
    prefix: --npaths
  type: long
- doc: If more than maximum number of paths are found, then nothing is printed.
  id: quiet_if_excessive
  inputBinding:
    prefix: --quiet-if-excessive
  type: boolean
- doc: Print output in same order as input (relevant only if there is more than one
    worker thread)
  id: ordered
  inputBinding:
    prefix: --ordered
  type: boolean
- doc: For GSNAP output in SNP-tolerant alignment, shows all differences relative
    to the reference genome as lower case (otherwise, it shows all differences relative
    to both the reference and alternate genome)
  id: show_ref_diff
  inputBinding:
    prefix: --show-refdiff
  type: boolean
- doc: For paired-end reads whose alignments overlap, clip the overlapping region.
  id: clip_overlap
  inputBinding:
    prefix: --clip-overlap
  type: boolean
- doc: For paired-end reads whose alignments overlap, merge the two ends into a single
    end (beta implementation)
  id: merge_overlap
  inputBinding:
    prefix: --merge-overlap
  type: boolean
- doc: Print detailed information about SNPs in reads (works only if -v also selected)
    (not fully implemented yet)
  id: print_snps
  inputBinding:
    prefix: --print-snps
  type: boolean
- doc: Print only failed alignments, those with no results
  id: fails_only
  inputBinding:
    prefix: --failsonly
  type: boolean
- doc: Exclude printing of failed alignments
  id: no_fails
  inputBinding:
    prefix: --nofails
  type: boolean
- doc: 'Another format type, other than default. Currently implemented: sam, m8 (BLAST
    tabular format)'
  id: format
  inputBinding:
    prefix: --format
  type: string
- doc: Basename for multiple-file output, separately for nomapping, halfmapping_uniq,
    halfmapping_mult, unpaired_uniq, unpaired_mult, paired_uniq, paired_mult, concordant_uniq,
    and concordant_mult results
  id: split_output
  inputBinding:
    prefix: --split-output
  type: string
- doc: File name for a single stream of output results.
  id: output_file
  inputBinding:
    prefix: --output-file
  type: string
- doc: Print completely failed alignments as input FASTA or FASTQ format, to the given
    file, appending .1 or .2, for paired-end data. If the --split-output flag is also
    given, this file is generated in addition to the output in the .nomapping file.
  id: failed_input
  inputBinding:
    prefix: --failed-input
  type: string
- doc: When --split-output or --failed-input is given, this flag will append output
    to the existing files.  Otherwise, the default is to create new files.
  id: append_output
  inputBinding:
    prefix: --append-output
  type: boolean
- doc: 'Among alignments tied with the best score, order those alignments in this
    order. Allowed values: genomic, random (default)'
  id: order_among_best
  inputBinding:
    prefix: --order-among-best
  type: string
- doc: Buffer size, in queries, for output thread (default 1000).  When the number
    of results to be printed exceeds this size, the worker threads are halted until
    the backlog is cleared
  id: output_buffer_size
  inputBinding:
    prefix: --output-buffer-size
  type: long
- doc: Print headers only for this batch, as specified by -q
  id: sam_headers_batch
  inputBinding:
    prefix: --sam-headers-batch
  type: long
- doc: Use S instead of H for hardclips
  id: sam_hard_clip_use_s
  inputBinding:
    prefix: --sam-hardclip-use-S
  type: boolean
- doc: Insert 0M in CIGAR between adjacent insertions, deletions, and introns Picard
    disallows 0M, other tools may require it
  id: sam_use_0m
  inputBinding:
    prefix: --sam-use-0M
  type: boolean
- doc: Use extended CIGAR format (using X and = symbols instead of M, to indicate
    matches and mismatches, respectively
  id: sam_extended_cigar
  inputBinding:
    prefix: --sam-extended-cigar
  type: boolean
- doc: Allows multiple alignments to be marked as primary if they have equally good
    mapping scores
  id: sam_multiple_primaries
  inputBinding:
    prefix: --sam-multiple-primaries
  type: boolean
- doc: For secondary alignments (in multiple mappings), uses '*' for SEQ and QUAL
    fields, to give smaller file sizes.  However, the output will give warnings in
    Picard to give warnings and may not work with downstream tools
  id: sam_sparse_secondaries
  inputBinding:
    prefix: --sam-sparse-secondaries
  type: boolean
- doc: For RNA-Seq alignments, disallows XS:A:? when the sense direction is unclear,
    and replaces this value arbitrarily with XS:A:+. May be useful for some programs,
    such as Cufflinks, that cannot handle XS:A:?.  However, if you use this flag,
    the reported value of XS:A:+ in these cases will not be meaningful.
  id: force_xs_dir
  inputBinding:
    prefix: --force-xs-dir
  type: boolean
- doc: In MD string, when known SNPs are given by the -v flag, prints difference nucleotides
    as lower-case when they, differ from reference but match a known alternate allele
  id: md_lowercase_snp
  inputBinding:
    prefix: --md-lowercase-snp
  type: boolean
- doc: Extends alignments through soft clipped regions
  id: extend_soft_clips
  inputBinding:
    prefix: --extend-soft-clips
  type: boolean
- doc: 'Action to take if there is a disagreement between CIGAR length and sequence
    length Allowed values: ignore, warning (default), noprint, abort Note that the
    noprint option does not print the CIGAR string at all if there is an error, so
    it may break a SAM parser'
  id: action_if_cigar_error
  inputBinding:
    prefix: --action-if-cigar-error
  type: boolean
- doc: Value to put into read-group id (RG-ID) field
  id: read_group_id
  inputBinding:
    prefix: --read-group-id
  type: string
- doc: Value to put into read-group name (RG-SM) field
  id: read_group_name
  inputBinding:
    prefix: --read-group-name
  type: string
- doc: Value to put into read-group library (RG-LB) field
  id: read_group_library
  inputBinding:
    prefix: --read-group-library
  type: string
- doc: Value to put into read-group library (RG-PL) field
  id: read_group_platform
  inputBinding:
    prefix: --read-group-platform
  type: string
- doc: Check compiler assumptions
  id: check
  inputBinding:
    prefix: --check
  type: boolean
