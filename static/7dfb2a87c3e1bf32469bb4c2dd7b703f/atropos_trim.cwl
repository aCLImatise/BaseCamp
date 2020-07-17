class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/atropos_trim.cwl
inputs:
- id: debug
  doc: Print debugging information. (no)
  type: boolean
  inputBinding:
    prefix: --debug
- id: progress
  doc: Show progress. bar = show progress bar; msg = show a status message. (no)
  type: string
  inputBinding:
    prefix: --progress
- id: quiet
  doc: Print only error messages. (no)
  type: boolean
  inputBinding:
    prefix: --quiet
- id: log_level
  doc: Logging level. (ERROR when --quiet else INFO)
  type: string
  inputBinding:
    prefix: --log-level
- id: log_file
  doc: File to write logging info. (stdout)
  type: File
  inputBinding:
    prefix: --log-file
- id: input_one
  doc: The first input file.
  type: File
  inputBinding:
    prefix: --input1
- id: input_two
  doc: The second input file.
  type: File
  inputBinding:
    prefix: --input2
- id: interleaved_input
  doc: Interleaved input file.
  type: File
  inputBinding:
    prefix: --interleaved-input
- id: single_input
  doc: A single-end read file.
  type: File
  inputBinding:
    prefix: --single-input
- id: single_input_read
  doc: When treating an interleaved FASTQ or paired-end SAM/BAM file as single-end,
    this option specifies which of the two reads to process. (both reads used)
  type: string
  inputBinding:
    prefix: --single-input-read
- id: single_quals
  doc: A single-end qual file.
  type: File
  inputBinding:
    prefix: --single-quals
- id: sra_accession
  doc: Accession to stream from SRA (requires optional NGS dependency to be installed).
  type: string
  inputBinding:
    prefix: --sra-accession
- id: format
  doc: Input file format. Ignored when reading csfasta/qual files. (auto-detect from
    file name extension)
  type: string
  inputBinding:
    prefix: --format
- id: quality_base
  doc: Assume that quality values in FASTQ are encoded as ascii(quality + QUALITY_BASE).
    This needs to be set to 64 for some old Illumina FASTQ files. (33)
  type: string
  inputBinding:
    prefix: --quality-base
- id: color_space
  doc: 'Enable colorspace mode: Also trim the color that is adjacent to the found
    adapter. (no)'
  type: boolean
  inputBinding:
    prefix: --colorspace
- id: max_reads
  doc: Maximum number of reads/pairs to process (no max)
  type: string
  inputBinding:
    prefix: --max-reads
- id: subsample
  doc: Subsample a fraction of reads. (no)
  type: string
  inputBinding:
    prefix: --subsample
- id: subsample_seed
  doc: The seed to use for the pseudorandom number generator. Using the same seed
    will result in the same subsampling of reads.
  type: string
  inputBinding:
    prefix: --subsample-seed
- id: batch_size
  doc: Number of records to process in each batch. (1000)
  type: long
  inputBinding:
    prefix: --batch-size
- id: sample_id
  doc: Optional sample ID. Added to the summary output.
  type: string
  inputBinding:
    prefix: --sample-id
- id: alphabet
  doc: Specify a sequence alphabet to use for validating inputs. Currently, only 'dna'
    is supported. (no validation)
  type: string
  inputBinding:
    prefix: --alphabet
- id: adapter
  doc: "Sequence of an adapter ligated to the 3' end (paired data: of the first read).\
    \ The adapter and subsequent bases are trimmed. If a '$' character is appended\
    \ ('anchoring'), the adapter is only found if it is a suffix of the read. (none)"
  type: string
  inputBinding:
    prefix: --adapter
- id: front
  doc: "Sequence of an adapter ligated to the 5' end (paired data: of the first read).\
    \ The adapter and any preceding bases are trimmed. Partial matches at the 5' end\
    \ are allowed. If a '^' character is prepended ('anchoring'), the adapter is only\
    \ found if it is a prefix of the read. (none)"
  type: string
  inputBinding:
    prefix: --front
- id: anywhere
  doc: "Sequence of an adapter that may be ligated to the 5' or 3' end (paired data:\
    \ of the first read). Both types of matches as described under -a und -g are allowed.\
    \ If the first base of the read is part of the match, the behavior is as with\
    \ -g, otherwise as with -a. This option is mostly for rescuing failed library\
    \ preparations - do not use if you know which end your adapter was ligated to!\
    \ (none)"
  type: string
  inputBinding:
    prefix: --anywhere
- id: known_adapters_file
  doc: Path or URL of a FASTA file containing adapter sequences.
  type: string
  inputBinding:
    prefix: --known-adapters-file
- id: no_default_adapters
  doc: Don't fetch the default adapter list (which is currently stored in GitHub).
  type: boolean
  inputBinding:
    prefix: --no-default-adapters
- id: adapter_cache_file
  doc: File where adapter sequences will be cached, unless --no-cache-adapters is
    set.
  type: string
  inputBinding:
    prefix: --adapter-cache-file
- id: no_cache_adapters
  doc: Don't cache adapters list as '.adapters' in the working directory.
  type: boolean
  inputBinding:
    prefix: --no-cache-adapters
- id: no_trim
  doc: Match and redirect reads to output/untrimmed-output as usual, but do not remove
    adapters. (no)
  type: boolean
  inputBinding:
    prefix: --no-trim
- id: mask_adapter
  doc: Mask adapters with 'N' characters instead of trimming them. (no)
  type: boolean
  inputBinding:
    prefix: --mask-adapter
- id: gc_content
  doc: Expected GC content of sequences.
  type: string
  inputBinding:
    prefix: --gc-content
- id: aligner
  doc: Which alignment algorithm to use for identifying adapters. Currently, you can
    choose between the semi- global alignment strategy used in Cutdapt ('adapter')
    or the more accurate insert-based alignment algorithm ('insert'). Note that insert-based
    alignment can only be used with paired-end reads containing 3' adapters. New algorithms
    are being implemented and the default is likely to change. (adapter)
  type: string
  inputBinding:
    prefix: --aligner
- id: error_rate
  doc: Maximum allowed error rate for adapter match (no. of errors divided by the
    length of the matching region). (0.1)
  type: string
  inputBinding:
    prefix: --error-rate
- id: in_del_cost
  doc: Integer cost of insertions and deletions during adapter match. Substitutions
    always have a cost of 1. (1)
  type: string
  inputBinding:
    prefix: --indel-cost
- id: no_indels
  doc: Allow only mismatches in alignments. (allow both mismatches and indels)
  type: boolean
  inputBinding:
    prefix: --no-indels
- id: times
  doc: Remove up to COUNT adapters from each read. (1)
  type: string
  inputBinding:
    prefix: --times
- id: match_read_wildcards
  doc: Interpret IUPAC wildcards in reads. (no)
  type: boolean
  inputBinding:
    prefix: --match-read-wildcards
- id: no_match_adapter_wildcards
  doc: Do not interpret IUPAC wildcards in adapters. (no)
  type: boolean
  inputBinding:
    prefix: --no-match-adapter-wildcards
- id: overlap
  doc: If the overlap between the read and the adapter is shorter than MINLENGTH,
    the read is not modified. Reduces the no. of bases trimmed due to random adapter
    matches. (3)
  type: long
  inputBinding:
    prefix: --overlap
- id: adapter_max_rmp
  doc: If no minimum overlap (-O) is specified, then adapters are only matched when
    the probabilty of observing k out of n matching bases is <= PROB. (1E-6)
  type: string
  inputBinding:
    prefix: --adapter-max-rmp
- id: insert_max_rmp
  doc: Overlapping inserts only match when the probablity of observing k of n matching
    bases is <= PROB. (1E-6)
  type: string
  inputBinding:
    prefix: --insert-max-rmp
- id: insert_match_error_rate
  doc: Maximum allowed error rate for insert match (no. of errors divided by the length
    of the matching region). (0.2)
  type: string
  inputBinding:
    prefix: --insert-match-error-rate
- id: insert_match_adapter_error_rate
  doc: Maximum allowed error rate for matching adapters after successful insert match
    (no. of errors divided by the length of the matching region). (0.2)
  type: string
  inputBinding:
    prefix: --insert-match-adapter-error-rate
- id: merge_overlapping
  doc: Merge read pairs that overlap into a single sequence. This is experimental.
    (no)
  type: boolean
  inputBinding:
    prefix: --merge-overlapping
- id: merge_min_overlap
  doc: The minimum overlap between reads required for merging. If this number is (0,1.0],
    it specifies the minimum length as the fraction of the length of the *shorter*
    read in the pair; otherwise it specifies the minimum number of overlapping base
    pairs (with an absolute minimum of 2 bp). (0.9)
  type: string
  inputBinding:
    prefix: --merge-min-overlap
- id: merge_error_rate
  doc: The maximum error rate for merging. (0.2)
  type: string
  inputBinding:
    prefix: --merge-error-rate
- id: correct_mismatches
  doc: How to handle mismatches while aligning/merging. 'Liberal' and 'conservative'
    error correction both involve setting the base to the one with the best quality.
    They differ only when the qualities are equal -- liberal means set it to the base
    from the read with the overall best median base quality, while conservative means
    to leave it unchanged. 'N' means to set the base to N. If exactly one base is
    ambiguous, the non-ambiguous base is always used. (no error correction)
  type: string
  inputBinding:
    prefix: --correct-mismatches
- id: op_order
  doc: "The order in which trimming operations are be applied. This is a string of\
    \ 1-5 of the following characters: A = adapter trimming; C = cutting (unconditional);\
    \ G = NextSeq trimming; Q = quality trimming; W = overwrite poor quality reads.\
    \ The default is 'WCGQA' to maintain compatibility with Cutadapt; however, this\
    \ is likely to change to 'GAWCQ' in the near future."
  type: string
  inputBinding:
    prefix: --op-order
- id: cut
  doc: Remove bases from each read (first read only if paired). If LENGTH is positive,
    remove bases from the beginning. If LENGTH is negative, remove bases from the
    end. Can be used twice if LENGTHs have different signs. (no)
  type: long
  inputBinding:
    prefix: --cut
- id: end_second_no
  doc: "[5'CUTOFF,]3'CUTOFF, --quality-cutoff [5'CUTOFF,]3'CUTOFF Trim low-quality\
    \ bases from 5' and/or 3' ends of each read before adapter removal. Applied to\
    \ both reads if data is paired. If one value is given, only the 3' end is trimmed.\
    \ If two comma-separated cutoffs are given, the 5' end is trimmed with the first\
    \ cutoff, the 3' end with the second. (no)"
  type: boolean
  inputBinding:
    prefix: -q
- id: cut_min
  doc: Similar to -u, except that cutting is done AFTER adapter trimming, and only
    if a minimum of LENGTH bases was not already removed. (no)
  type: long
  inputBinding:
    prefix: --cut-min
- id: next_seq_trim
  doc: "'CUTOFF NextSeq-specific quality trimming (each read). Trims also dark cycles\
    \ appearing as high-quality G bases (EXPERIMENTAL). (no)"
  type: string
  inputBinding:
    prefix: --nextseq-trim
- id: trim_n
  doc: Trim N's on ends of reads. (no)
  type: boolean
  inputBinding:
    prefix: --trim-n
- id: prefix
  doc: Add this prefix to read names. Use {name} to insert the name of the matching
    adapter. (no)
  type: string
  inputBinding:
    prefix: --prefix
- id: suffix
  doc: Add this suffix to read names; can also include {name}. (no)
  type: string
  inputBinding:
    prefix: --suffix
- id: strip_suffix
  doc: Remove this suffix from read names if present. Can be given multiple times.
    (no)
  type: string
  inputBinding:
    prefix: --strip-suffix
- id: length_tag
  doc: Search for TAG followed by a decimal number in the description field of the
    read. Replace the decimal number with the correct length of the trimmed read.
    For example, use --length-tag 'length=' to correct fields like 'length=123'. (no)
  type: string
  inputBinding:
    prefix: --length-tag
- id: discard_trimmed
  doc: Discard reads that contain an adapter. Also use -O to avoid discarding too
    many randomly matching reads! (no)
  type: boolean
  inputBinding:
    prefix: --discard-trimmed
- id: discard_untrimmed
  doc: Discard reads that do not contain the adapter. (no)
  type: boolean
  inputBinding:
    prefix: --discard-untrimmed
- id: minimum_length
  doc: Discard trimmed reads that are shorter than LENGTH. Reads that are too short
    even before adapter removal are also discarded. In colorspace, an initial primer
    is not counted. (0)
  type: long
  inputBinding:
    prefix: --minimum-length
- id: maximum_length
  doc: Discard trimmed reads that are longer than LENGTH. Reads that are too long
    even before adapter removal are also discarded. In colorspace, an initial primer
    is not counted. (no limit)
  type: long
  inputBinding:
    prefix: --maximum-length
- id: max_n
  doc: Discard reads with too many N bases. If COUNT is an integer, it is treated
    as the absolute number of N bases. If it is between 0 and 1, it is treated as
    the proportion of N's allowed in a read. (no)
  type: string
  inputBinding:
    prefix: --max-n
- id: output
  doc: Write trimmed reads to FILE. FASTQ or FASTA format is chosen depending on input.
    The summary report is sent to standard output. Use '{name}' in FILE to demultiplex
    reads into multiple files. (write to standard output)
  type: File
  inputBinding:
    prefix: --output
- id: info_file
  doc: Write information about each read and its adapter matches into FILE. See the
    documentation for the file format. (no)
  type: File
  inputBinding:
    prefix: --info-file
- id: rest_file
  doc: When the adapter matches in the middle of a read, write the rest (after the
    adapter) into FILE. (no)
  type: File
  inputBinding:
    prefix: --rest-file
- id: wildcard_file
  doc: When the adapter has N bases (wildcards), write adapter bases matching wildcard
    positions to FILE. When there are indels in the alignment, this will often not
    be accurate. (no)
  type: File
  inputBinding:
    prefix: --wildcard-file
- id: too_short_output
  doc: Write reads that are too short (according to length specified by -m) to FILE.
    (no - too short reads are discarded)
  type: File
  inputBinding:
    prefix: --too-short-output
- id: too_long_output
  doc: Write reads that are too long (according to length specified by -M) to FILE.
    (no - too long reads are discarded)
  type: File
  inputBinding:
    prefix: --too-long-output
- id: untrimmed_output
  doc: Write reads that do not contain the adapter to FILE. (no - untrimmed reads
    are written to default output)
  type: File
  inputBinding:
    prefix: --untrimmed-output
- id: merged_output
  doc: Write reads that have been merged to this file. (merged reads are discarded)
  type: File
  inputBinding:
    prefix: --merged-output
- id: report_file
  doc: Write report to file rather than stdout/stderr. (no)
  type: File
  inputBinding:
    prefix: --report-file
- id: report_formats
  doc: "[FORMAT [FORMAT ...]] Report type(s) to generate. If multiple, '--report-\
    \ file' is treated as a prefix and the appropriate extensions are appended. If\
    \ unspecified, the format is guessed from the file extension. Supported formats\
    \ are: txt (legacy text format), json, yaml, pickle. See the documentation for\
    \ a full description of the structured output (json/yaml/pickle formats)."
  type: boolean
  inputBinding:
    prefix: --report-formats
- id: stats
  doc: "[STATS [STATS ...]] Which read-level statistics to compute. Can be 'none'\
    \ (default), 'pre': only compute pre-trimming stats; 'post': only compute post-trimming\
    \ stats; or 'both'. The keyword can be followed by ':' and then additional configuration\
    \ parameters. E.g. 'pre:tiles' means to also collect tile-level statistics (Illumina\
    \ data only), and 'pre:tiles=<regexp>' means to use the specified regular expression\
    \ to extract key portions of read names to collect the tile statistics."
  type: boolean
  inputBinding:
    prefix: --stats
- id: double_encode
  doc: Double-encode colors (map 0,1,2,3,4 to A,C,G,T,N). (no)
  type: boolean
  inputBinding:
    prefix: --double-encode
- id: trim_primer
  doc: Trim primer base and the first color (which is the transition to the first
    nucleotide). (no)
  type: boolean
  inputBinding:
    prefix: --trim-primer
- id: strip_f_three
  doc: Strip the _F3 suffix of read names. (no)
  type: boolean
  inputBinding:
    prefix: --strip-f3
- id: maq
  doc: MAQ- and BWA-compatible colorspace output. This enables -c, -d, -t, --strip-f3
    and -y '/1'. (no)
  type: boolean
  inputBinding:
    prefix: --maq
- id: no_zero_cap
  doc: Do not change negative quality values to zero in colorspace data. By default,
    they are since many tools have problems with negative qualities. (no)
  type: boolean
  inputBinding:
    prefix: --no-zero-cap
- id: zero_cap
  doc: Change negative quality values to zero. This is enabled by default when -c/--colorspace
    is also enabled. Use the above option to disable it. (no)
  type: boolean
  inputBinding:
    prefix: --zero-cap
- id: adapter_two
  doc: 3' adapter to be removed from second read in a pair. (no)
  type: string
  inputBinding:
    prefix: --adapter2
- id: front_two
  doc: 5' adapter to be removed from second read in a pair. (no)
  type: string
  inputBinding:
    prefix: --front2
- id: anywhere_two
  doc: 5'/3 adapter to be removed from second read in a pair. (no)
  type: string
  inputBinding:
    prefix: --anywhere2
- id: cut_two
  doc: Remove LENGTH bases from second read in a pair (see --cut). (no)
  type: long
  inputBinding:
    prefix: --cut2
- id: cut_min_two
  doc: Similar to -U, except that cutting is done AFTER adapter trimming, and only
    if a minimum of LENGTH bases was not already removed (see --cut-min). (no)
  type: long
  inputBinding:
    prefix: --cut-min2
- id: highqwindow__overwritelowquality
  doc: ',HIGHQ,WINDOW, --overwrite-low-quality LOWQ,HIGHQ,WINDOW When one read has
    mean quality < LOWQ and the other read has mean quality >= HIGHQ over the first
    WINDOW bases, overwrite the worse read with the better read.'
  type: string
  inputBinding:
    prefix: -w
- id: paired_output
  doc: Write second read in a pair to FILE. (no)
  type: File
  inputBinding:
    prefix: --paired-output
- id: interleaved_output
  doc: Write output to interleaved file.
  type: File
  inputBinding:
    prefix: --interleaved-output
- id: pair_filter
  doc: (any|both) Which of the reads in a paired-end read have to match the filtering
    criterion in order for it to be filtered. (any)
  type: boolean
  inputBinding:
    prefix: --pair-filter
- id: untrimmed_paired_output
  doc: Write second read in a pair to this FILE when no adapter was found in the first
    read. Use this option together with --untrimmed-output when trimming paired- end
    reads. (no - output to same file as trimmed reads)
  type: File
  inputBinding:
    prefix: --untrimmed-paired-output
- id: too_short_paired_output
  doc: Write second read in a pair to this file if pair is too short. Use together
    with --too-short-output. (no - too short reads are discarded)
  type: File
  inputBinding:
    prefix: --too-short-paired-output
- id: too_long_paired_output
  doc: Write second read in a pair to this file if pair is too long. Use together
    with --too-long-output. (no - too long reads are discarded)
  type: File
  inputBinding:
    prefix: --too-long-paired-output
- id: bisulfite
  doc: "Set default option values for bisulfite-treated data. The argument specifies\
    \ the type of bisulfite library (rrbs, non-directional, non-directional-rrbs,\
    \ truseq, epignome, or swift) or custom parameters for trimming: '<read1>[;<read2>]'\
    \ where trimming parameters for each read are: '<5' cut>,<3' cut>,<include trimmed>,<only\
    \ trimmed>' where 'include trimmed' is 1 or 0 for whether or not the bases already\
    \ trimmed during/prior to adapter trimming should be counted towards the total\
    \ bases to be cut and 'only trimmed' is 1 or 0 for whether or not only trimmed\
    \ reads should be further cut. (no)"
  type: string
  inputBinding:
    prefix: --bisulfite
- id: mirna
  doc: Set default option values for miRNA data. (no)
  type: boolean
  inputBinding:
    prefix: --mirna
- id: threads
  doc: Number of threads to use for read trimming. Set to 0 to use max available threads.
    (Do not use multithreading)
  type: string
  inputBinding:
    prefix: --threads
- id: no_writer_process
  doc: Do not use a writer process; instead, each worker thread writes its own output
    to a file with a '.N' suffix. (no)
  type: boolean
  inputBinding:
    prefix: --no-writer-process
- id: preserve_order
  doc: Preserve order of reads in input files (ignored if --no-writer-process is set).
    (no)
  type: boolean
  inputBinding:
    prefix: --preserve-order
- id: process_timeout
  doc: Number of seconds process should wait before escalating messages to ERROR level.
    (60)
  type: string
  inputBinding:
    prefix: --process-timeout
- id: read_queue_size
  doc: Size of queue for batches of reads to be processed. (THREADS * 100)
  type: long
  inputBinding:
    prefix: --read-queue-size
- id: result_queue_size
  doc: Size of queue for batches of results to be written. (THREADS * 100)
  type: long
  inputBinding:
    prefix: --result-queue-size
- id: compression
  doc: Where data compression should be performed. Defaults to 'writer' if system-level
    compression can be used and (1 < threads < 8), otherwise defaults to 'worker'.
  type: string
  inputBinding:
    prefix: --compression
outputs: []
cwlVersion: v1.1
baseCommand:
- atropos
- trim
