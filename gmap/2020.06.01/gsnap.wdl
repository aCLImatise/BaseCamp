version 1.0

task Gsnap.sse42 {
  input {
    Directory? dir
    String? db
    Int? use_local_db
    Directory? transcript_dir
    String? transcript_db
    Boolean? use_transcriptome_only
    Int? km_er
    Int? sampling
    Int? part
    Int? input_buffer_size
    Int? barcode_length
    Int? end_trim_length
    String? orientation
    Int? fast_q_id_start
    Int? fast_q_id_end
    Boolean? force_single_end
    String? filter_chastity
    Boolean? allow_pe_name_mismatch
    Boolean? interleaved
    Boolean? gunzip
    Boolean? b_unzip_two
    Int? use_shared_memory
    Boolean? preload_shared_memory
    Boolean? unload_shared_memory
    Float? max_mismatches
    Float? min_coverage
    Int? ignore_trim_in_filtering
    Int? query_unk_mismatch
    Int? genome_unk_mismatch
    Int? in_del_penalty
    Int? in_del_end_length
    Float? max_middle_insertions
    Float? max_middle_deletions
    Int? max_end_insertions
    Int? max_end_deletions
    Int? suboptimal_levels
    String? adapter_strip
    Int? trim_in_del_score
    String? use_mask
    String? snps_dir
    String? use_snps
    String? c_met_dir
    String? atoi_dir
    String? mode
    Int? n_threads
    Int? max_anchors
    Int? find_dna_chimeras
    Int? novel_splicing
    String? splicing_dir
    String? use_splicing
    Boolean? am_big_splice_no_clip
    Int? local_splice_dist
    Int? novel_end_splice_dist
    Int? local_splice_penalty
    Int? distant_splice_penalty
    Int? distant_splice_end_length
    Int? short_end_splice_end_length
    Float? distant_splice_identity
    Int? anti_stranded_penalty
    Boolean? merge_distant_same_chr
    Int? pair_max_dna
    Int? pair_max_rna
    Int? pair_expect
    Int? pair_dev
    String? quality_protocol
    Int? quality_zero_score
    Int? quality_print_shift
    Int? n_paths
    Boolean? quiet_if_excessive
    Boolean? ordered
    Boolean? show_ref_diff
    Boolean? clip_overlap
    Boolean? merge_overlap
    Boolean? print_snps
    Boolean? fails_only
    Boolean? no_fails
    String? format
    String? split_output
    String? output_file
    String? failed_input
    Boolean? append_output
    String? order_among_best
    Int? output_buffer_size
    Int? sam_headers_batch
    Boolean? sam_hard_clip_use_s
    Boolean? sam_use_zero_m
    Boolean? sam_extended_cigar
    Boolean? sam_multiple_primaries
    Boolean? sam_sparse_secondaries
    Boolean? force_xs_dir
    Boolean? md_lowercase_snp
    Boolean? extend_soft_clips
    Boolean? action_if_cigar_error
    String? read_group_id
    String? read_group_name
    String? read_group_library
    String? read_group_platform
    Boolean? check
    String? options_dot_dot_dot
    String fast_a_file
  }
  command <<<
    gsnap.sse42 \
      ~{options_dot_dot_dot} \
      ~{fast_a_file} \
      ~{if defined(dir) then ("--dir " +  '"' + dir + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(use_local_db) then ("--use-localdb " +  '"' + use_local_db + '"') else ""} \
      ~{if defined(transcript_dir) then ("--transcriptdir " +  '"' + transcript_dir + '"') else ""} \
      ~{if defined(transcript_db) then ("--transcriptdb " +  '"' + transcript_db + '"') else ""} \
      ~{true="--use-transcriptome-only" false="" use_transcriptome_only} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(sampling) then ("--sampling " +  '"' + sampling + '"') else ""} \
      ~{if defined(part) then ("--part " +  '"' + part + '"') else ""} \
      ~{if defined(input_buffer_size) then ("--input-buffer-size " +  '"' + input_buffer_size + '"') else ""} \
      ~{if defined(barcode_length) then ("--barcode-length " +  '"' + barcode_length + '"') else ""} \
      ~{if defined(end_trim_length) then ("--endtrim-length " +  '"' + end_trim_length + '"') else ""} \
      ~{if defined(orientation) then ("--orientation " +  '"' + orientation + '"') else ""} \
      ~{if defined(fast_q_id_start) then ("--fastq-id-start " +  '"' + fast_q_id_start + '"') else ""} \
      ~{if defined(fast_q_id_end) then ("--fastq-id-end " +  '"' + fast_q_id_end + '"') else ""} \
      ~{true="--force-single-end" false="" force_single_end} \
      ~{if defined(filter_chastity) then ("--filter-chastity " +  '"' + filter_chastity + '"') else ""} \
      ~{true="--allow-pe-name-mismatch" false="" allow_pe_name_mismatch} \
      ~{true="--interleaved" false="" interleaved} \
      ~{true="--gunzip" false="" gunzip} \
      ~{true="--bunzip2" false="" b_unzip_two} \
      ~{if defined(use_shared_memory) then ("--use-shared-memory " +  '"' + use_shared_memory + '"') else ""} \
      ~{true="--preload-shared-memory" false="" preload_shared_memory} \
      ~{true="--unload-shared-memory" false="" unload_shared_memory} \
      ~{if defined(max_mismatches) then ("--max-mismatches " +  '"' + max_mismatches + '"') else ""} \
      ~{if defined(min_coverage) then ("--min-coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(ignore_trim_in_filtering) then ("--ignore-trim-in-filtering " +  '"' + ignore_trim_in_filtering + '"') else ""} \
      ~{if defined(query_unk_mismatch) then ("--query-unk-mismatch " +  '"' + query_unk_mismatch + '"') else ""} \
      ~{if defined(genome_unk_mismatch) then ("--genome-unk-mismatch " +  '"' + genome_unk_mismatch + '"') else ""} \
      ~{if defined(in_del_penalty) then ("--indel-penalty " +  '"' + in_del_penalty + '"') else ""} \
      ~{if defined(in_del_end_length) then ("--indel-endlength " +  '"' + in_del_end_length + '"') else ""} \
      ~{if defined(max_middle_insertions) then ("--max-middle-insertions " +  '"' + max_middle_insertions + '"') else ""} \
      ~{if defined(max_middle_deletions) then ("--max-middle-deletions " +  '"' + max_middle_deletions + '"') else ""} \
      ~{if defined(max_end_insertions) then ("--max-end-insertions " +  '"' + max_end_insertions + '"') else ""} \
      ~{if defined(max_end_deletions) then ("--max-end-deletions " +  '"' + max_end_deletions + '"') else ""} \
      ~{if defined(suboptimal_levels) then ("--suboptimal-levels " +  '"' + suboptimal_levels + '"') else ""} \
      ~{if defined(adapter_strip) then ("--adapter-strip " +  '"' + adapter_strip + '"') else ""} \
      ~{if defined(trim_in_del_score) then ("--trim-indel-score " +  '"' + trim_in_del_score + '"') else ""} \
      ~{if defined(use_mask) then ("--use-mask " +  '"' + use_mask + '"') else ""} \
      ~{if defined(snps_dir) then ("--snpsdir " +  '"' + snps_dir + '"') else ""} \
      ~{if defined(use_snps) then ("--use-snps " +  '"' + use_snps + '"') else ""} \
      ~{if defined(c_met_dir) then ("--cmetdir " +  '"' + c_met_dir + '"') else ""} \
      ~{if defined(atoi_dir) then ("--atoidir " +  '"' + atoi_dir + '"') else ""} \
      ~{if defined(mode) then ("--mode " +  '"' + mode + '"') else ""} \
      ~{if defined(n_threads) then ("--nthreads " +  '"' + n_threads + '"') else ""} \
      ~{if defined(max_anchors) then ("--max-anchors " +  '"' + max_anchors + '"') else ""} \
      ~{if defined(find_dna_chimeras) then ("--find-dna-chimeras " +  '"' + find_dna_chimeras + '"') else ""} \
      ~{if defined(novel_splicing) then ("--novelsplicing " +  '"' + novel_splicing + '"') else ""} \
      ~{if defined(splicing_dir) then ("--splicingdir " +  '"' + splicing_dir + '"') else ""} \
      ~{if defined(use_splicing) then ("--use-splicing " +  '"' + use_splicing + '"') else ""} \
      ~{true="--ambig-splice-noclip" false="" am_big_splice_no_clip} \
      ~{if defined(local_splice_dist) then ("--localsplicedist " +  '"' + local_splice_dist + '"') else ""} \
      ~{if defined(novel_end_splice_dist) then ("--novelend-splicedist " +  '"' + novel_end_splice_dist + '"') else ""} \
      ~{if defined(local_splice_penalty) then ("--local-splice-penalty " +  '"' + local_splice_penalty + '"') else ""} \
      ~{if defined(distant_splice_penalty) then ("--distant-splice-penalty " +  '"' + distant_splice_penalty + '"') else ""} \
      ~{if defined(distant_splice_end_length) then ("--distant-splice-endlength " +  '"' + distant_splice_end_length + '"') else ""} \
      ~{if defined(short_end_splice_end_length) then ("--shortend-splice-endlength " +  '"' + short_end_splice_end_length + '"') else ""} \
      ~{if defined(distant_splice_identity) then ("--distant-splice-identity " +  '"' + distant_splice_identity + '"') else ""} \
      ~{if defined(anti_stranded_penalty) then ("--antistranded-penalty " +  '"' + anti_stranded_penalty + '"') else ""} \
      ~{true="--merge-distant-samechr" false="" merge_distant_same_chr} \
      ~{if defined(pair_max_dna) then ("--pairmax-dna " +  '"' + pair_max_dna + '"') else ""} \
      ~{if defined(pair_max_rna) then ("--pairmax-rna " +  '"' + pair_max_rna + '"') else ""} \
      ~{if defined(pair_expect) then ("--pairexpect " +  '"' + pair_expect + '"') else ""} \
      ~{if defined(pair_dev) then ("--pairdev " +  '"' + pair_dev + '"') else ""} \
      ~{if defined(quality_protocol) then ("--quality-protocol " +  '"' + quality_protocol + '"') else ""} \
      ~{if defined(quality_zero_score) then ("--quality-zero-score " +  '"' + quality_zero_score + '"') else ""} \
      ~{if defined(quality_print_shift) then ("--quality-print-shift " +  '"' + quality_print_shift + '"') else ""} \
      ~{if defined(n_paths) then ("--npaths " +  '"' + n_paths + '"') else ""} \
      ~{true="--quiet-if-excessive" false="" quiet_if_excessive} \
      ~{true="--ordered" false="" ordered} \
      ~{true="--show-refdiff" false="" show_ref_diff} \
      ~{true="--clip-overlap" false="" clip_overlap} \
      ~{true="--merge-overlap" false="" merge_overlap} \
      ~{true="--print-snps" false="" print_snps} \
      ~{true="--failsonly" false="" fails_only} \
      ~{true="--nofails" false="" no_fails} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(split_output) then ("--split-output " +  '"' + split_output + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""} \
      ~{if defined(failed_input) then ("--failed-input " +  '"' + failed_input + '"') else ""} \
      ~{true="--append-output" false="" append_output} \
      ~{if defined(order_among_best) then ("--order-among-best " +  '"' + order_among_best + '"') else ""} \
      ~{if defined(output_buffer_size) then ("--output-buffer-size " +  '"' + output_buffer_size + '"') else ""} \
      ~{if defined(sam_headers_batch) then ("--sam-headers-batch " +  '"' + sam_headers_batch + '"') else ""} \
      ~{true="--sam-hardclip-use-S" false="" sam_hard_clip_use_s} \
      ~{true="--sam-use-0M" false="" sam_use_zero_m} \
      ~{true="--sam-extended-cigar" false="" sam_extended_cigar} \
      ~{true="--sam-multiple-primaries" false="" sam_multiple_primaries} \
      ~{true="--sam-sparse-secondaries" false="" sam_sparse_secondaries} \
      ~{true="--force-xs-dir" false="" force_xs_dir} \
      ~{true="--md-lowercase-snp" false="" md_lowercase_snp} \
      ~{true="--extend-soft-clips" false="" extend_soft_clips} \
      ~{true="--action-if-cigar-error" false="" action_if_cigar_error} \
      ~{if defined(read_group_id) then ("--read-group-id " +  '"' + read_group_id + '"') else ""} \
      ~{if defined(read_group_name) then ("--read-group-name " +  '"' + read_group_name + '"') else ""} \
      ~{if defined(read_group_library) then ("--read-group-library " +  '"' + read_group_library + '"') else ""} \
      ~{if defined(read_group_platform) then ("--read-group-platform " +  '"' + read_group_platform + '"') else ""} \
      ~{true="--check" false="" check}
  >>>
  parameter_meta {
    dir: "Genome directory.  Default (as specified by --with-gmapdb to the configure program) is /tmp/tmpu5a6ivvl/share"
    db: "Genome database"
    use_local_db: "Whether to use the local hash tables, which help with finding extensions to the ends of alignments in the presence of splicing or indels (0=no, 1=yes if available (default))"
    transcript_dir: "Transcriptome directory.  Default is the value for --dir above"
    transcript_db: "Transcriptome database"
    use_transcriptome_only: "Use only the transcriptome index and not the genome index"
    km_er: "kmer size to use in genome database (allowed values: 16 or less) If not specified, the program will find the highest available kmer size in the genome database"
    sampling: "Sampling to use in genome database.  If not specified, the program will find the smallest available sampling value in the genome database within selected k-mer size"
    part: "Process only the i-th out of every n sequences e.g., 0/100 or 99/100 (useful for distributing jobs to a computer farm)."
    input_buffer_size: "Size of input buffer (program reads this many sequences at a time for efficiency) (default 1000)"
    barcode_length: "Amount of barcode to remove from start of every read before alignment (default 0)"
    end_trim_length: "Amount of trim to remove from the end of every read before alignment (default 0)"
    orientation: "Orientation of paired-end reads Allowed values: FR (fwd-rev, or typical Illumina; default), RF (rev-fwd, for circularized inserts), or FF (fwd-fwd, same strand)"
    fast_q_id_start: "Starting position of identifier in FASTQ header, space-delimited (>= 1)"
    fast_q_id_end: "Ending position of identifier in FASTQ header, space-delimited (>= 1) Examples: @HWUSI-EAS100R:6:73:941:1973#0/1 start=1, end=1 (default) => identifier is HWUSI-EAS100R:6:73:941:1973#0 @SRR001666.1 071112_SLXA-EAS1_s_7:5:1:817:345 length=36 start=1, end=1  => identifier is SRR001666.1 start=2, end=2  => identifier is 071112_SLXA-EAS1_s_7:5:1:817:345 start=1, end=2  => identifier is SRR001666.1 071112_SLXA-EAS1_s_7:5:1:817:345"
    force_single_end: "When multiple FASTQ files are provided on the command line, GSNAP assumes they are matching paired-end files.  This flag treats each file as single-end."
    filter_chastity: "Skips reads marked by the Illumina chastity program.  Expecting a string after the accession having a 'Y' after the first colon, like this: @accession 1:Y:0:CTTGTA where the 'Y' signifies filtering by chastity. Values: off (default), either, both.  For 'either', a 'Y' on either end of a paired-end read will be filtered.  For 'both', a 'Y' is required on both ends of a paired-end read (or on the only end of a single-end read)."
    allow_pe_name_mismatch: "Allows accession names of reads to mismatch in paired-end files"
    interleaved: "Input is in interleaved format (one read per line, tab-delimited"
    gunzip: "Uncompress gzipped input files"
    b_unzip_two: "Uncompress bzip2-compressed input files"
    use_shared_memory: "If 1, then allocated memory is shared among all processes on this node If 0 (default), then each process has private allocated memory"
    preload_shared_memory: "Load files indicated by --batch mode into shared memory for use by other GMAP/GSNAP processes on this node, and then exit.  Ignore any input files."
    unload_shared_memory: "Unload files indicated by --batch mode into shared memory, or allow them to be unloaded when existing GMAP/GSNAP processes on this node are finished with them.  Ignore any input files."
    max_mismatches: "Maximum number of mismatches allowed (if not specified, then GSNAP tries to find the best possible match in the genome) If specified between 0.0 and 1.0, then treated as a fraction of each read length.  Otherwise, treated as an integral number of mismatches (including indel and splicing penalties). Default is to be unspecified (to find the best possible match)"
    min_coverage: "Minimum coverage required for an alignment. If specified between 0.0 and 1.0, then treated as a fraction of each read length.  Otherwise, treated as an integral number of base pairs.  Default value is 0.5."
    ignore_trim_in_filtering: "Whether to ignore trimmed ends in applying the --max-mismatches parameter.  Default for RNA-Seq is 1 (yes), so we can allow for reads that align past the ends of an exon.  Default for DNA-Seq is 0 (no). For RNA-Seq, trimmed ends should be ignored, because trimming is performed at probable splice sites, to allow for reads that align past the ends of an exon."
    query_unk_mismatch: "Whether to count unknown (N) characters in the query as a mismatch (0=no (default), 1=yes)"
    genome_unk_mismatch: "Whether to count unknown (N) characters in the genome as a mismatch (0=no, 1=yes).  If --use-mask is specified, default is no, otherwise yes."
    in_del_penalty: "Penalty for an indel (default 2). Counts against mismatches allowed.  To find indels, make indel-penalty less than or equal to max-mismatches. A value < 2 can lead to false positives at read ends"
    in_del_end_length: "Minimum length at end required for indel alignments (default 4)"
    max_middle_insertions: "Maximum number of middle insertions allowed (default is 0.2) If specified between 0.0 and 1.0, then treated as a fraction of each read length.  Otherwise, treated as an integral number of base pairs"
    max_middle_deletions: "Maximum number of middle deletions allowed (default 0.2) If specified between 0.0 and 1.0, then treated as a fraction of each read length.  Otherwise, treated as an integral number of base pairs"
    max_end_insertions: "Maximum number of end insertions allowed (default 3)"
    max_end_deletions: "Maximum number of end deletions allowed (default 6)"
    suboptimal_levels: "Report suboptimal hits beyond best hit (default 0) All hits with best score plus suboptimal-levels are reported"
    adapter_strip: "Method for removing adapters from reads.  Currently allowed values: off, paired. Default is \"off\".  To turn on, specify \"paired\", which removes adapters from paired-end reads if they appear to be present."
    trim_in_del_score: "Score to use for indels when trimming at ends.  To turn off trimming, specify 0.  Default is -2 for both RNA-Seq and DNA-Seq.  Warning: Turning trimming off in RNA-Seq can give false positive indels at the ends of reads"
    use_mask: "Use genome containing masks (e.g. for non-exons) for scoring preference"
    snps_dir: "Directory for SNPs index files (created using snpindex) (default is location of genome index files specified using -D and -d)"
    use_snps: "Use database containing known SNPs (in <STRING>.iit, built previously using snpindex) for tolerance to SNPs"
    c_met_dir: "Directory for methylcytosine index files (created using cmetindex) (default is location of genome index files specified using -D, -V, and -d)"
    atoi_dir: "Directory for A-to-I RNA editing index files (created using atoiindex) (default is location of genome index files specified using -D, -V, and -d)"
    mode: "Alignment mode: standard (default), cmet-stranded, cmet-nonstranded, atoi-stranded, atoi-nonstranded, ttoc-stranded, or ttoc-nonstranded. Non-standard modes requires you to have previously run the cmetindex or atoiindex programs (which also cover the ttoc modes) on the genome"
    n_threads: "Number of worker threads"
    max_anchors: "Controls number of candidate segments returned by the complete set algorithm Default is 10.  Can be increased to higher values to solve alignments with evenly spaced mismatches at close distances.  However, higher values will cause GSNAP to run more slowly.  A value of 1000, for example, slows down the program by a factor of 10 or so.  Therefore, change this value only if absolutely necessary."
    find_dna_chimeras: "Look for distant splicing involving poor splice sites (0=no, 1=yes (default)) Current implementation improves even RNA-Seq alignments at poor splice sites so it is now on by default."
    novel_splicing: "Look for novel splicing (0=no (default), 1=yes)"
    splicing_dir: "Directory for splicing involving known sites or known introns, as specified by the -s or --use-splicing flag (default is directory computed from -D and -d flags).  Note: can just give full pathname to the -s flag instead."
    use_splicing: "Look for splicing involving known sites or known introns (in <STRING>.iit), at short or long distances See README instructions for the distinction between known sites and known introns"
    am_big_splice_no_clip: "For ambiguous known splicing at ends of the read, do not clip at the splice site, but extend instead into the intron.  This flag makes sense only if you provide the --use-splicing flag, and you are trying to eliminate all soft clipping with --trim-mismatch-score=0"
    local_splice_dist: "Definition of local novel splicing event (default 200000)"
    novel_end_splice_dist: "Distance to look for novel splices at the ends of reads (default 80000)"
    local_splice_penalty: "Penalty for a local splice (default 0).  Counts against mismatches allowed"
    distant_splice_penalty: "Penalty for a distant splice (default 1).  A distant splice is one where the intron length exceeds the value of -w, or --localsplicedist, or is an inversion, scramble, or translocation between two different chromosomes Counts against mismatches allowed"
    distant_splice_end_length: "Minimum length at end required for distant spliced alignments (default 20, min allowed is the value of -k, or kmer size)"
    short_end_splice_end_length: "Minimum length at end required for short-end spliced alignments (default 2, but unless known splice sites are provided with the -s flag, GSNAP may still need the end length to be the value of -k, or kmer size to find a given splice"
    distant_splice_identity: "Minimum identity at end required for distant spliced alignments (default 0.95)"
    anti_stranded_penalty: "(Not currently implemented, since it leads to poor results) Penalty for antistranded splicing when using stranded RNA-Seq protocols. A positive value, such as 1, expects antisense on the first read and sense on the second read.  Default is 0, which treats sense and antisense equally well"
    merge_distant_same_chr: "Report distant splices on the same chromosome as a single splice, if possible. Will produce a single SAM line instead of two SAM lines, which is also done for translocations, inversions, and scramble events"
    pair_max_dna: "Max total genomic length for DNA-Seq paired reads, or other reads without splicing (default 2000).  Used if -N or -s is not specified. This value is also used for circular chromosomes when splicing in linear chromosomes is allowed"
    pair_max_rna: "Max total genomic length for RNA-Seq paired reads, or other reads that could have a splice (default 200000).  Used if -N or -s is specified. Should probably match the value for -w, --localsplicedist."
    pair_expect: "Expected paired-end length, used for calling splices in medial part of paired-end reads (default 500).  Was turned off in previous versions, but reinstated."
    pair_dev: "Allowable deviation from expected paired-end length, used for calling splices in medial part of paired-end reads (default 100). Was turned off in previous versions, but reinstated."
    quality_protocol: "Protocol for input quality scores.  Allowed values: illumina (ASCII 64-126) (equivalent to -J 64 -j -31) sanger   (ASCII 33-126) (equivalent to -J 33 -j 0) Default is sanger (no quality print shift) SAM output files should have quality scores in sanger protocol Or you can customize this behavior with these flags:"
    quality_zero_score: "FASTQ quality scores are zero at this ASCII value (default is 33 for sanger protocol; for Illumina, select 64)"
    quality_print_shift: "Shift FASTQ quality scores by this amount in output (default is 0 for sanger protocol; to change Illumina input to Sanger output, select -31)"
    n_paths: "Maximum number of paths to print (default 100)."
    quiet_if_excessive: "If more than maximum number of paths are found, then nothing is printed."
    ordered: "Print output in same order as input (relevant only if there is more than one worker thread)"
    show_ref_diff: "For GSNAP output in SNP-tolerant alignment, shows all differences relative to the reference genome as lower case (otherwise, it shows all differences relative to both the reference and alternate genome)"
    clip_overlap: "For paired-end reads whose alignments overlap, clip the overlapping region."
    merge_overlap: "For paired-end reads whose alignments overlap, merge the two ends into a single end (beta implementation)"
    print_snps: "Print detailed information about SNPs in reads (works only if -v also selected) (not fully implemented yet)"
    fails_only: "Print only failed alignments, those with no results"
    no_fails: "Exclude printing of failed alignments"
    format: "Another format type, other than default. Currently implemented: sam, m8 (BLAST tabular format)"
    split_output: "Basename for multiple-file output, separately for nomapping, halfmapping_uniq, halfmapping_mult, unpaired_uniq, unpaired_mult, paired_uniq, paired_mult, concordant_uniq, and concordant_mult results"
    output_file: "File name for a single stream of output results."
    failed_input: "Print completely failed alignments as input FASTA or FASTQ format, to the given file, appending .1 or .2, for paired-end data. If the --split-output flag is also given, this file is generated in addition to the output in the .nomapping file."
    append_output: "When --split-output or --failed-input is given, this flag will append output to the existing files.  Otherwise, the default is to create new files."
    order_among_best: "Among alignments tied with the best score, order those alignments in this order. Allowed values: genomic, random (default)"
    output_buffer_size: "Buffer size, in queries, for output thread (default 1000).  When the number of results to be printed exceeds this size, the worker threads are halted until the backlog is cleared"
    sam_headers_batch: "Print headers only for this batch, as specified by -q"
    sam_hard_clip_use_s: "Use S instead of H for hardclips"
    sam_use_zero_m: "Insert 0M in CIGAR between adjacent insertions, deletions, and introns Picard disallows 0M, other tools may require it"
    sam_extended_cigar: "Use extended CIGAR format (using X and = symbols instead of M, to indicate matches and mismatches, respectively"
    sam_multiple_primaries: "Allows multiple alignments to be marked as primary if they have equally good mapping scores"
    sam_sparse_secondaries: "For secondary alignments (in multiple mappings), uses '*' for SEQ and QUAL fields, to give smaller file sizes.  However, the output will give warnings in Picard to give warnings and may not work with downstream tools"
    force_xs_dir: "For RNA-Seq alignments, disallows XS:A:? when the sense direction is unclear, and replaces this value arbitrarily with XS:A:+. May be useful for some programs, such as Cufflinks, that cannot handle XS:A:?.  However, if you use this flag, the reported value of XS:A:+ in these cases will not be meaningful."
    md_lowercase_snp: "In MD string, when known SNPs are given by the -v flag, prints difference nucleotides as lower-case when they, differ from reference but match a known alternate allele"
    extend_soft_clips: "Extends alignments through soft clipped regions"
    action_if_cigar_error: "Action to take if there is a disagreement between CIGAR length and sequence length Allowed values: ignore, warning (default), noprint, abort Note that the noprint option does not print the CIGAR string at all if there is an error, so it may break a SAM parser"
    read_group_id: "Value to put into read-group id (RG-ID) field"
    read_group_name: "Value to put into read-group name (RG-SM) field"
    read_group_library: "Value to put into read-group library (RG-LB) field"
    read_group_platform: "Value to put into read-group library (RG-PL) field"
    check: "Check compiler assumptions"
    options_dot_dot_dot: ""
    fast_a_file: ""
  }
}