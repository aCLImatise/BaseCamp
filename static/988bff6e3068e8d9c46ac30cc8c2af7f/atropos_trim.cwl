class: CommandLineTool
id: atropos_trim.cwl
inputs:
- id: in_debug
  doc: Print debugging information. (no)
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_progress
  doc: "Show progress. bar = show progress bar; msg = show a\nstatus message. (no)"
  type: string?
  inputBinding:
    prefix: --progress
- id: in_quiet
  doc: Print only error messages. (no)
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_log_level
  doc: Logging level. (ERROR when --quiet else INFO)
  type: string?
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: File to write logging info. (stdout)
  type: File?
  inputBinding:
    prefix: --log-file
- id: in_input_one
  doc: The first input file.
  type: File?
  inputBinding:
    prefix: --input1
- id: in_input_two
  doc: The second input file.
  type: File?
  inputBinding:
    prefix: --input2
- id: in_interleaved_input
  doc: Interleaved input file.
  type: File?
  inputBinding:
    prefix: --interleaved-input
- id: in_single_input
  doc: A single-end read file.
  type: File?
  inputBinding:
    prefix: --single-input
- id: in_single_input_read
  doc: "When treating an interleaved FASTQ or paired-end\nSAM/BAM file as single-end,\
    \ this option specifies\nwhich of the two reads to process. (both reads used)"
  type: string?
  inputBinding:
    prefix: --single-input-read
- id: in_single_quals
  doc: A single-end qual file.
  type: File?
  inputBinding:
    prefix: --single-quals
- id: in_sra_accession
  doc: "Accession to stream from SRA (requires optional NGS\ndependency to be installed)."
  type: string?
  inputBinding:
    prefix: --sra-accession
- id: in_format
  doc: "Input file format. Ignored when reading csfasta/qual\nfiles. (auto-detect\
    \ from file name extension)"
  type: string?
  inputBinding:
    prefix: --format
- id: in_quality_base
  doc: "Assume that quality values in FASTQ are encoded as\nascii(quality + QUALITY_BASE).\
    \ This needs to be set to\n64 for some old Illumina FASTQ files. (33)"
  type: long?
  inputBinding:
    prefix: --quality-base
- id: in_color_space
  doc: "Enable colorspace mode: Also trim the color that is\nadjacent to the found\
    \ adapter. (no)"
  type: boolean?
  inputBinding:
    prefix: --colorspace
- id: in_max_reads
  doc: Maximum number of reads/pairs to process (no max)
  type: long?
  inputBinding:
    prefix: --max-reads
- id: in_subsample
  doc: Subsample a fraction of reads. (no)
  type: string?
  inputBinding:
    prefix: --subsample
- id: in_subsample_seed
  doc: "The seed to use for the pseudorandom number generator.\nUsing the same seed\
    \ will result in the same\nsubsampling of reads."
  type: long?
  inputBinding:
    prefix: --subsample-seed
- id: in_batch_size
  doc: Number of records to process in each batch. (1000)
  type: long?
  inputBinding:
    prefix: --batch-size
- id: in_sample_id
  doc: Optional sample ID. Added to the summary output.
  type: string?
  inputBinding:
    prefix: --sample-id
- id: in_alphabet
  doc: "Specify a sequence alphabet to use for validating\ninputs. Currently, only\
    \ 'dna' is supported. (no\nvalidation)"
  type: string?
  inputBinding:
    prefix: --alphabet
- id: in_adapter
  doc: "Sequence of an adapter ligated to the 3' end (paired\ndata: of the first read).\
    \ The adapter and subsequent\nbases are trimmed. If a '$' character is appended\n\
    ('anchoring'), the adapter is only found if it is a\nsuffix of the read. (none)"
  type: long?
  inputBinding:
    prefix: --adapter
- id: in_front
  doc: "Sequence of an adapter ligated to the 5' end (paired\ndata: of the first read).\
    \ The adapter and any\npreceding bases are trimmed. Partial matches at the 5'\n\
    end are allowed. If a '^' character is prepended\n('anchoring'), the adapter is\
    \ only found if it is a\nprefix of the read. (none)"
  type: long?
  inputBinding:
    prefix: --front
- id: in_anywhere
  doc: "Sequence of an adapter that may be ligated to the 5'\nor 3' end (paired data:\
    \ of the first read). Both types\nof matches as described under -a und -g are\
    \ allowed.\nIf the first base of the read is part of the match,\nthe behavior\
    \ is as with -g, otherwise as with -a. This\noption is mostly for rescuing failed\
    \ library\npreparations - do not use if you know which end your\nadapter was ligated\
    \ to! (none)"
  type: long?
  inputBinding:
    prefix: --anywhere
- id: in_known_adapters_file
  doc: "Path or URL of a FASTA file containing adapter\nsequences."
  type: File?
  inputBinding:
    prefix: --known-adapters-file
- id: in_no_default_adapters
  doc: "Don't fetch the default adapter list (which is\ncurrently stored in GitHub)."
  type: boolean?
  inputBinding:
    prefix: --no-default-adapters
- id: in_adapter_cache_file
  doc: "File where adapter sequences will be cached, unless\n--no-cache-adapters is\
    \ set."
  type: File?
  inputBinding:
    prefix: --adapter-cache-file
- id: in_no_cache_adapters
  doc: "Don't cache adapters list as '.adapters' in the\nworking directory."
  type: boolean?
  inputBinding:
    prefix: --no-cache-adapters
- id: in_no_trim
  doc: "Match and redirect reads to output/untrimmed-output as\nusual, but do not\
    \ remove adapters. (no)"
  type: boolean?
  inputBinding:
    prefix: --no-trim
- id: in_mask_adapter
  doc: "Mask adapters with 'N' characters instead of trimming\nthem. (no)"
  type: boolean?
  inputBinding:
    prefix: --mask-adapter
- id: in_gc_content
  doc: Expected GC content of sequences.
  type: string?
  inputBinding:
    prefix: --gc-content
- id: in_aligner
  doc: "Which alignment algorithm to use for identifying\nadapters. Currently, you\
    \ can choose between the semi-\nglobal alignment strategy used in Cutdapt ('adapter')\n\
    or the more accurate insert-based alignment algorithm\n('insert'). Note that insert-based\
    \ alignment can only\nbe used with paired-end reads containing 3' adapters.\n\
    New algorithms are being implemented and the default\nis likely to change. (adapter)"
  type: string?
  inputBinding:
    prefix: --aligner
- id: in_error_rate
  doc: "Maximum allowed error rate for adapter match (no. of\nerrors divided by the\
    \ length of the matching region).\n(0.1)"
  type: long?
  inputBinding:
    prefix: --error-rate
- id: in_in_del_cost
  doc: "Integer cost of insertions and deletions during\nadapter match. Substitutions\
    \ always have a cost of 1.\n(1)"
  type: long?
  inputBinding:
    prefix: --indel-cost
- id: in_no_indels
  doc: "Allow only mismatches in alignments. (allow both\nmismatches and indels)"
  type: boolean?
  inputBinding:
    prefix: --no-indels
- id: in_times
  doc: Remove up to COUNT adapters from each read. (1)
  type: long?
  inputBinding:
    prefix: --times
- id: in_match_read_wildcards
  doc: Interpret IUPAC wildcards in reads. (no)
  type: boolean?
  inputBinding:
    prefix: --match-read-wildcards
- id: in_no_match_adapter_wildcards
  doc: Do not interpret IUPAC wildcards in adapters. (no)
  type: boolean?
  inputBinding:
    prefix: --no-match-adapter-wildcards
- id: in_overlap
  doc: "If the overlap between the read and the adapter is\nshorter than MINLENGTH,\
    \ the read is not modified.\nReduces the no. of bases trimmed due to random adapter\n\
    matches. (3)"
  type: long?
  inputBinding:
    prefix: --overlap
- id: in_adapter_max_rmp
  doc: "If no minimum overlap (-O) is specified, then adapters\nare only matched when\
    \ the probabilty of observing k\nout of n matching bases is <= PROB. (1E-6)"
  type: long?
  inputBinding:
    prefix: --adapter-max-rmp
- id: in_insert_max_rmp
  doc: "Overlapping inserts only match when the probablity of\nobserving k of n matching\
    \ bases is <= PROB. (1E-6)"
  type: long?
  inputBinding:
    prefix: --insert-max-rmp
- id: in_insert_match_error_rate
  doc: "Maximum allowed error rate for insert match (no. of\nerrors divided by the\
    \ length of the matching region).\n(0.2)"
  type: long?
  inputBinding:
    prefix: --insert-match-error-rate
- id: in_insert_match_adapter_error_rate
  doc: "Maximum allowed error rate for matching adapters after\nsuccessful insert\
    \ match (no. of errors divided by the\nlength of the matching region). (0.2)"
  type: long?
  inputBinding:
    prefix: --insert-match-adapter-error-rate
- id: in_merge_overlapping
  doc: "Merge read pairs that overlap into a single sequence.\nThis is experimental.\
    \ (no)"
  type: boolean?
  inputBinding:
    prefix: --merge-overlapping
- id: in_merge_min_overlap
  doc: "The minimum overlap between reads required for\nmerging. If this number is\
    \ (0,1.0], it specifies the\nminimum length as the fraction of the length of the\n\
    *shorter* read in the pair; otherwise it specifies the\nminimum number of overlapping\
    \ base pairs (with an\nabsolute minimum of 2 bp). (0.9)"
  type: long?
  inputBinding:
    prefix: --merge-min-overlap
- id: in_merge_error_rate
  doc: The maximum error rate for merging. (0.2)
  type: double?
  inputBinding:
    prefix: --merge-error-rate
- id: in_correct_mismatches
  doc: "How to handle mismatches while aligning/merging.\n'Liberal' and 'conservative'\
    \ error correction both\ninvolve setting the base to the one with the best\nquality.\
    \ They differ only when the qualities are equal\n-- liberal means set it to the\
    \ base from the read with\nthe overall best median base quality, while\nconservative\
    \ means to leave it unchanged. 'N' means to\nset the base to N. If exactly one\
    \ base is ambiguous,\nthe non-ambiguous base is always used. (no error\ncorrection)"
  type: string?
  inputBinding:
    prefix: --correct-mismatches
- id: in_op_order
  doc: "The order in which trimming operations are be applied.\nThis is a string of\
    \ 1-5 of the following characters: A\n= adapter trimming; C = cutting (unconditional);\
    \ G =\nNextSeq trimming; Q = quality trimming; W = overwrite\npoor quality reads.\
    \ The default is 'WCGQA' to maintain\ncompatibility with Cutadapt; however, this\
    \ is likely\nto change to 'GAWCQ' in the near future."
  type: string?
  inputBinding:
    prefix: --op-order
- id: in_cut
  doc: "Remove bases from each read (first read only if\npaired). If LENGTH is positive,\
    \ remove bases from the\nbeginning. If LENGTH is negative, remove bases from\n\
    the end. Can be used twice if LENGTHs have different\nsigns. (no)"
  type: long?
  inputBinding:
    prefix: --cut
- id: in_cutofftrim_lowquality_bases
  doc: "[5'CUTOFF,]3'CUTOFF, --quality-cutoff [5'CUTOFF,]3'CUTOFF\nTrim low-quality\
    \ bases from 5' and/or 3' ends of each\nread before adapter removal. Applied to\
    \ both reads if\ndata is paired. If one value is given, only the 3' end\nis trimmed.\
    \ If two comma-separated cutoffs are given,\nthe 5' end is trimmed with the first\
    \ cutoff, the 3'\nend with the second. (no)"
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_cut_min
  doc: "Similar to -u, except that cutting is done AFTER\nadapter trimming, and only\
    \ if a minimum of LENGTH\nbases was not already removed. (no)"
  type: long?
  inputBinding:
    prefix: --cut-min
- id: in_next_seq_trim
  doc: "'CUTOFF\nNextSeq-specific quality trimming (each read). Trims\nalso dark cycles\
    \ appearing as high-quality G bases\n(EXPERIMENTAL). (no)"
  type: long?
  inputBinding:
    prefix: --nextseq-trim
- id: in_trim_n
  doc: Trim N's on ends of reads. (no)
  type: boolean?
  inputBinding:
    prefix: --trim-n
- id: in_prefix
  doc: "Add this prefix to read names. Use {name} to insert\nthe name of the matching\
    \ adapter. (no)"
  type: string?
  inputBinding:
    prefix: --prefix
- id: in_suffix
  doc: "Add this suffix to read names; can also include\n{name}. (no)"
  type: string?
  inputBinding:
    prefix: --suffix
- id: in_strip_suffix
  doc: "Remove this suffix from read names if present. Can be\ngiven multiple times.\
    \ (no)"
  type: string?
  inputBinding:
    prefix: --strip-suffix
- id: in_length_tag
  doc: "Search for TAG followed by a decimal number in the\ndescription field of the\
    \ read. Replace the decimal\nnumber with the correct length of the trimmed read.\n\
    For example, use --length-tag 'length=' to correct\nfields like 'length=123'.\
    \ (no)"
  type: long?
  inputBinding:
    prefix: --length-tag
- id: in_discard_trimmed
  doc: "Discard reads that contain an adapter. Also use -O to\navoid discarding too\
    \ many randomly matching reads!\n(no)"
  type: boolean?
  inputBinding:
    prefix: --discard-trimmed
- id: in_discard_untrimmed
  doc: Discard reads that do not contain the adapter. (no)
  type: boolean?
  inputBinding:
    prefix: --discard-untrimmed
- id: in_minimum_length
  doc: "Discard trimmed reads that are shorter than LENGTH.\nReads that are too short\
    \ even before adapter removal\nare also discarded. In colorspace, an initial primer\n\
    is not counted. (0)"
  type: long?
  inputBinding:
    prefix: --minimum-length
- id: in_maximum_length
  doc: "Discard trimmed reads that are longer than LENGTH.\nReads that are too long\
    \ even before adapter removal\nare also discarded. In colorspace, an initial primer\n\
    is not counted. (no limit)"
  type: long?
  inputBinding:
    prefix: --maximum-length
- id: in_max_n
  doc: "Discard reads with too many N bases. If COUNT is an\ninteger, it is treated\
    \ as the absolute number of N\nbases. If it is between 0 and 1, it is treated\
    \ as the\nproportion of N's allowed in a read. (no)"
  type: long?
  inputBinding:
    prefix: --max-n
- id: in_output
  doc: "Write trimmed reads to FILE. FASTQ or FASTA format is\nchosen depending on\
    \ input. The summary report is sent\nto standard output. Use '{name}' in FILE\
    \ to\ndemultiplex reads into multiple files. (write to\nstandard output)"
  type: File?
  inputBinding:
    prefix: --output
- id: in_info_file
  doc: "Write information about each read and its adapter\nmatches into FILE. See\
    \ the documentation for the file\nformat. (no)"
  type: File?
  inputBinding:
    prefix: --info-file
- id: in_rest_file
  doc: "When the adapter matches in the middle of a read,\nwrite the rest (after the\
    \ adapter) into FILE. (no)"
  type: File?
  inputBinding:
    prefix: --rest-file
- id: in_wildcard_file
  doc: "When the adapter has N bases (wildcards), write\nadapter bases matching wildcard\
    \ positions to FILE.\nWhen there are indels in the alignment, this will\noften\
    \ not be accurate. (no)"
  type: File?
  inputBinding:
    prefix: --wildcard-file
- id: in_too_short_output
  doc: "Write reads that are too short (according to length\nspecified by -m) to FILE.\
    \ (no - too short reads are\ndiscarded)"
  type: File?
  inputBinding:
    prefix: --too-short-output
- id: in_too_long_output
  doc: "Write reads that are too long (according to length\nspecified by -M) to FILE.\
    \ (no - too long reads are\ndiscarded)"
  type: File?
  inputBinding:
    prefix: --too-long-output
- id: in_untrimmed_output
  doc: "Write reads that do not contain the adapter to FILE.\n(no - untrimmed reads\
    \ are written to default output)"
  type: File?
  inputBinding:
    prefix: --untrimmed-output
- id: in_merged_output
  doc: "Write reads that have been merged to this file.\n(merged reads are discarded)"
  type: File?
  inputBinding:
    prefix: --merged-output
- id: in_report_file
  doc: Write report to file rather than stdout/stderr. (no)
  type: File?
  inputBinding:
    prefix: --report-file
- id: in_report_formats
  doc: "[FORMAT [FORMAT ...]]\nReport type(s) to generate. If multiple, '--report-\n\
    file' is treated as a prefix and the appropriate\nextensions are appended. If\
    \ unspecified, the format is\nguessed from the file extension. Supported formats\n\
    are: txt (legacy text format), json, yaml, pickle. See\nthe documentation for\
    \ a full description of the\nstructured output (json/yaml/pickle formats)."
  type: File?
  inputBinding:
    prefix: --report-formats
- id: in_stats
  doc: "[STATS [STATS ...]]\nWhich read-level statistics to compute. Can be 'none'\n\
    (default), 'pre': only compute pre-trimming stats;\n'post': only compute post-trimming\
    \ stats; or 'both'.\nThe keyword can be followed by ':' and then additional\n\
    configuration parameters. E.g. 'pre:tiles' means to\nalso collect tile-level statistics\
    \ (Illumina data\nonly), and 'pre:tiles=<regexp>' means to use the\nspecified\
    \ regular expression to extract key portions\nof read names to collect the tile\
    \ statistics."
  type: boolean?
  inputBinding:
    prefix: --stats
- id: in_double_encode
  doc: "Double-encode colors (map 0,1,2,3,4 to A,C,G,T,N).\n(no)"
  type: boolean?
  inputBinding:
    prefix: --double-encode
- id: in_trim_primer
  doc: "Trim primer base and the first color (which is the\ntransition to the first\
    \ nucleotide). (no)"
  type: boolean?
  inputBinding:
    prefix: --trim-primer
- id: in_strip_f_three
  doc: Strip the _F3 suffix of read names. (no)
  type: boolean?
  inputBinding:
    prefix: --strip-f3
- id: in_maq
  doc: "MAQ- and BWA-compatible colorspace output. This\nenables -c, -d, -t, --strip-f3\
    \ and -y '/1'. (no)"
  type: boolean?
  inputBinding:
    prefix: --maq
- id: in_no_zero_cap
  doc: "Do not change negative quality values to zero in\ncolorspace data. By default,\
    \ they are since many tools\nhave problems with negative qualities. (no)"
  type: boolean?
  inputBinding:
    prefix: --no-zero-cap
- id: in_zero_cap
  doc: "Change negative quality values to zero. This is\nenabled by default when -c/--colorspace\
    \ is also\nenabled. Use the above option to disable it. (no)"
  type: boolean?
  inputBinding:
    prefix: --zero-cap
- id: in_adapter_two
  doc: "3' adapter to be removed from second read in a pair.\n(no)"
  type: long?
  inputBinding:
    prefix: --adapter2
- id: in_front_two
  doc: "5' adapter to be removed from second read in a pair.\n(no)"
  type: long?
  inputBinding:
    prefix: --front2
- id: in_anywhere_two
  doc: "5'/3 adapter to be removed from second read in a pair.\n(no)"
  type: long?
  inputBinding:
    prefix: --anywhere2
- id: in_cut_two
  doc: "Remove LENGTH bases from second read in a pair (see\n--cut). (no)"
  type: long?
  inputBinding:
    prefix: --cut2
- id: in_cut_min_two
  doc: "Similar to -U, except that cutting is done AFTER\nadapter trimming, and only\
    \ if a minimum of LENGTH\nbases was not already removed (see --cut-min). (no)"
  type: long?
  inputBinding:
    prefix: --cut-min2
- id: in_highqwindow__overwritelowquality
  doc: ",HIGHQ,WINDOW, --overwrite-low-quality LOWQ,HIGHQ,WINDOW\nWhen one read has\
    \ mean quality < LOWQ and the other\nread has mean quality >= HIGHQ over the first\
    \ WINDOW\nbases, overwrite the worse read with the better read."
  type: string?
  inputBinding:
    prefix: -w
- id: in_paired_output
  doc: Write second read in a pair to FILE. (no)
  type: File?
  inputBinding:
    prefix: --paired-output
- id: in_interleaved_output
  doc: Write output to interleaved file.
  type: File?
  inputBinding:
    prefix: --interleaved-output
- id: in_pair_filter
  doc: "(any|both)\nWhich of the reads in a paired-end read have to match\nthe filtering\
    \ criterion in order for it to be\nfiltered. (any)"
  type: boolean?
  inputBinding:
    prefix: --pair-filter
- id: in_untrimmed_paired_output
  doc: "Write second read in a pair to this FILE when no\nadapter was found in the\
    \ first read. Use this option\ntogether with --untrimmed-output when trimming\
    \ paired-\nend reads. (no - output to same file as trimmed reads)"
  type: File?
  inputBinding:
    prefix: --untrimmed-paired-output
- id: in_too_short_paired_output
  doc: "Write second read in a pair to this file if pair is\ntoo short. Use together\
    \ with --too-short-output. (no -\ntoo short reads are discarded)"
  type: File?
  inputBinding:
    prefix: --too-short-paired-output
- id: in_too_long_paired_output
  doc: "Write second read in a pair to this file if pair is\ntoo long. Use together\
    \ with --too-long-output. (no -\ntoo long reads are discarded)"
  type: File?
  inputBinding:
    prefix: --too-long-paired-output
- id: in_bisulfite
  doc: "Set default option values for bisulfite-treated data.\nThe argument specifies\
    \ the type of bisulfite library\n(rrbs, non-directional, non-directional-rrbs,\
    \ truseq,\nepignome, or swift) or custom parameters for trimming:\n'<read1>[;<read2>]'\
    \ where trimming parameters for each\nread are: '<5' cut>,<3' cut>,<include trimmed>,<only\n\
    trimmed>' where 'include trimmed' is 1 or 0 for\nwhether or not the bases already\
    \ trimmed during/prior\nto adapter trimming should be counted towards the\ntotal\
    \ bases to be cut and 'only trimmed' is 1 or 0 for\nwhether or not only trimmed\
    \ reads should be further\ncut. (no)"
  type: long?
  inputBinding:
    prefix: --bisulfite
- id: in_mirna
  doc: Set default option values for miRNA data. (no)
  type: boolean?
  inputBinding:
    prefix: --mirna
- id: in_threads
  doc: "Number of threads to use for read trimming. Set to 0\nto use max available\
    \ threads. (Do not use\nmultithreading)"
  type: long?
  inputBinding:
    prefix: --threads
- id: in_no_writer_process
  doc: "Do not use a writer process; instead, each worker\nthread writes its own output\
    \ to a file with a '.N'\nsuffix. (no)"
  type: File?
  inputBinding:
    prefix: --no-writer-process
- id: in_preserve_order
  doc: Preserve order of reads in input files (ignored if
  type: boolean?
  inputBinding:
    prefix: --preserve-order
- id: in_process_timeout
  doc: "Number of seconds process should wait before\nescalating messages to ERROR\
    \ level. (60)"
  type: long?
  inputBinding:
    prefix: --process-timeout
- id: in_read_queue_size
  doc: "Size of queue for batches of reads to be processed.\n(THREADS * 100)"
  type: long?
  inputBinding:
    prefix: --read-queue-size
- id: in_result_queue_size
  doc: "Size of queue for batches of results to be written.\n(THREADS * 100)"
  type: long?
  inputBinding:
    prefix: --result-queue-size
- id: in_compression
  doc: "Where data compression should be performed. Defaults\nto 'writer' if system-level\
    \ compression can be used\nand (1 < threads < 8), otherwise defaults to 'worker'.\n"
  type: string?
  inputBinding:
    prefix: --compression
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_untrimmed_output
  doc: "Write reads that do not contain the adapter to FILE.\n(no - untrimmed reads\
    \ are written to default output)"
  type: File?
  outputBinding:
    glob: $(inputs.in_untrimmed_output)
- id: out_report_formats
  doc: "[FORMAT [FORMAT ...]]\nReport type(s) to generate. If multiple, '--report-\n\
    file' is treated as a prefix and the appropriate\nextensions are appended. If\
    \ unspecified, the format is\nguessed from the file extension. Supported formats\n\
    are: txt (legacy text format), json, yaml, pickle. See\nthe documentation for\
    \ a full description of the\nstructured output (json/yaml/pickle formats)."
  type: File?
  outputBinding:
    glob: $(inputs.in_report_formats)
- id: out_interleaved_output
  doc: Write output to interleaved file.
  type: File?
  outputBinding:
    glob: $(inputs.in_interleaved_output)
- id: out_untrimmed_paired_output
  doc: "Write second read in a pair to this FILE when no\nadapter was found in the\
    \ first read. Use this option\ntogether with --untrimmed-output when trimming\
    \ paired-\nend reads. (no - output to same file as trimmed reads)"
  type: File?
  outputBinding:
    glob: $(inputs.in_untrimmed_paired_output)
- id: out_too_short_paired_output
  doc: "Write second read in a pair to this file if pair is\ntoo short. Use together\
    \ with --too-short-output. (no -\ntoo short reads are discarded)"
  type: File?
  outputBinding:
    glob: $(inputs.in_too_short_paired_output)
- id: out_too_long_paired_output
  doc: "Write second read in a pair to this file if pair is\ntoo long. Use together\
    \ with --too-long-output. (no -\ntoo long reads are discarded)"
  type: File?
  outputBinding:
    glob: $(inputs.in_too_long_paired_output)
- id: out_no_writer_process
  doc: "Do not use a writer process; instead, each worker\nthread writes its own output\
    \ to a file with a '.N'\nsuffix. (no)"
  type: File?
  outputBinding:
    glob: $(inputs.in_no_writer_process)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/atropos:1.1.29--py37hf01694f_0
cwlVersion: v1.1
baseCommand:
- atropos
- trim
