version 1.0

task AtroposTrim {
  input {
    Boolean? debug
    String? progress
    Boolean? quiet
    String? log_level
    File? log_file
    File? input_one
    File? input_two
    File? interleaved_input
    File? single_input
    String? single_input_read
    File? single_quals
    String? sra_accession
    String? format
    String? quality_base
    Boolean? color_space
    String? max_reads
    String? subsample
    String? subsample_seed
    Int? batch_size
    String? sample_id
    String? alphabet
    String? adapter
    String? front
    String? anywhere
    String? known_adapters_file
    Boolean? no_default_adapters
    String? adapter_cache_file
    Boolean? no_cache_adapters
    Boolean? no_trim
    Boolean? mask_adapter
    String? gc_content
    String? aligner
    String? error_rate
    String? in_del_cost
    Boolean? no_indels
    String? times
    Boolean? match_read_wildcards
    Boolean? no_match_adapter_wildcards
    Int? overlap
    String? adapter_max_rmp
    String? insert_max_rmp
    String? insert_match_error_rate
    String? insert_match_adapter_error_rate
    Boolean? merge_overlapping
    String? merge_min_overlap
    String? merge_error_rate
    String? correct_mismatches
    String? op_order
    Int? cut
    Boolean? end_second_no
    Int? cut_min
    String? next_seq_trim
    Boolean? trim_n
    String? prefix
    String? suffix
    String? strip_suffix
    String? length_tag
    Boolean? discard_trimmed
    Boolean? discard_untrimmed
    Int? minimum_length
    Int? maximum_length
    String? max_n
    File? write_trimmed_reads
    File? info_file
    File? rest_file
    File? wildcard_file
    File? too_short_output
    File? too_long_output
    File? untrimmed_output
    File? merged_output
    File? report_file
    Boolean? report_formats
    Boolean? stats
    Boolean? double_encode
    Boolean? trim_primer
    Boolean? strip_f_three
    Boolean? maq
    Boolean? no_zero_cap
    Boolean? zero_cap
    String? adapter_two
    String? front_two
    String? anywhere_two
    Int? cut_two
    Int? cut_min_two
    String? highqwindow__overwritelowquality
    File? paired_output
    File? interleaved_output
    Boolean? pair_filter
    File? untrimmed_paired_output
    File? too_short_paired_output
    File? too_long_paired_output
    String? bisulfite
    Boolean? mirna
    String? threads
    Boolean? no_writer_process
    Boolean? preserve_order
    String? process_timeout
    Int? read_queue_size
    Int? result_queue_size
    String? compression
  }
  command <<<
    atropos trim \
      ~{true="--debug" false="" debug} \
      ~{if defined(progress) then ("--progress " +  '"' + progress + '"') else ""} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(log_level) then ("--log-level " +  '"' + log_level + '"') else ""} \
      ~{if defined(log_file) then ("--log-file " +  '"' + log_file + '"') else ""} \
      ~{if defined(input_one) then ("--input1 " +  '"' + input_one + '"') else ""} \
      ~{if defined(input_two) then ("--input2 " +  '"' + input_two + '"') else ""} \
      ~{if defined(interleaved_input) then ("--interleaved-input " +  '"' + interleaved_input + '"') else ""} \
      ~{if defined(single_input) then ("--single-input " +  '"' + single_input + '"') else ""} \
      ~{if defined(single_input_read) then ("--single-input-read " +  '"' + single_input_read + '"') else ""} \
      ~{if defined(single_quals) then ("--single-quals " +  '"' + single_quals + '"') else ""} \
      ~{if defined(sra_accession) then ("--sra-accession " +  '"' + sra_accession + '"') else ""} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(quality_base) then ("--quality-base " +  '"' + quality_base + '"') else ""} \
      ~{true="--colorspace" false="" color_space} \
      ~{if defined(max_reads) then ("--max-reads " +  '"' + max_reads + '"') else ""} \
      ~{if defined(subsample) then ("--subsample " +  '"' + subsample + '"') else ""} \
      ~{if defined(subsample_seed) then ("--subsample-seed " +  '"' + subsample_seed + '"') else ""} \
      ~{if defined(batch_size) then ("--batch-size " +  '"' + batch_size + '"') else ""} \
      ~{if defined(sample_id) then ("--sample-id " +  '"' + sample_id + '"') else ""} \
      ~{if defined(alphabet) then ("--alphabet " +  '"' + alphabet + '"') else ""} \
      ~{if defined(adapter) then ("--adapter " +  '"' + adapter + '"') else ""} \
      ~{if defined(front) then ("--front " +  '"' + front + '"') else ""} \
      ~{if defined(anywhere) then ("--anywhere " +  '"' + anywhere + '"') else ""} \
      ~{if defined(known_adapters_file) then ("--known-adapters-file " +  '"' + known_adapters_file + '"') else ""} \
      ~{true="--no-default-adapters" false="" no_default_adapters} \
      ~{if defined(adapter_cache_file) then ("--adapter-cache-file " +  '"' + adapter_cache_file + '"') else ""} \
      ~{true="--no-cache-adapters" false="" no_cache_adapters} \
      ~{true="--no-trim" false="" no_trim} \
      ~{true="--mask-adapter" false="" mask_adapter} \
      ~{if defined(gc_content) then ("--gc-content " +  '"' + gc_content + '"') else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if defined(error_rate) then ("--error-rate " +  '"' + error_rate + '"') else ""} \
      ~{if defined(in_del_cost) then ("--indel-cost " +  '"' + in_del_cost + '"') else ""} \
      ~{true="--no-indels" false="" no_indels} \
      ~{if defined(times) then ("--times " +  '"' + times + '"') else ""} \
      ~{true="--match-read-wildcards" false="" match_read_wildcards} \
      ~{true="--no-match-adapter-wildcards" false="" no_match_adapter_wildcards} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""} \
      ~{if defined(adapter_max_rmp) then ("--adapter-max-rmp " +  '"' + adapter_max_rmp + '"') else ""} \
      ~{if defined(insert_max_rmp) then ("--insert-max-rmp " +  '"' + insert_max_rmp + '"') else ""} \
      ~{if defined(insert_match_error_rate) then ("--insert-match-error-rate " +  '"' + insert_match_error_rate + '"') else ""} \
      ~{if defined(insert_match_adapter_error_rate) then ("--insert-match-adapter-error-rate " +  '"' + insert_match_adapter_error_rate + '"') else ""} \
      ~{true="--merge-overlapping" false="" merge_overlapping} \
      ~{if defined(merge_min_overlap) then ("--merge-min-overlap " +  '"' + merge_min_overlap + '"') else ""} \
      ~{if defined(merge_error_rate) then ("--merge-error-rate " +  '"' + merge_error_rate + '"') else ""} \
      ~{if defined(correct_mismatches) then ("--correct-mismatches " +  '"' + correct_mismatches + '"') else ""} \
      ~{if defined(op_order) then ("--op-order " +  '"' + op_order + '"') else ""} \
      ~{if defined(cut) then ("--cut " +  '"' + cut + '"') else ""} \
      ~{true="-q" false="" end_second_no} \
      ~{if defined(cut_min) then ("--cut-min " +  '"' + cut_min + '"') else ""} \
      ~{if defined(next_seq_trim) then ("--nextseq-trim " +  '"' + next_seq_trim + '"') else ""} \
      ~{true="--trim-n" false="" trim_n} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if defined(strip_suffix) then ("--strip-suffix " +  '"' + strip_suffix + '"') else ""} \
      ~{if defined(length_tag) then ("--length-tag " +  '"' + length_tag + '"') else ""} \
      ~{true="--discard-trimmed" false="" discard_trimmed} \
      ~{true="--discard-untrimmed" false="" discard_untrimmed} \
      ~{if defined(minimum_length) then ("--minimum-length " +  '"' + minimum_length + '"') else ""} \
      ~{if defined(maximum_length) then ("--maximum-length " +  '"' + maximum_length + '"') else ""} \
      ~{if defined(max_n) then ("--max-n " +  '"' + max_n + '"') else ""} \
      ~{if defined(write_trimmed_reads) then ("--output " +  '"' + write_trimmed_reads + '"') else ""} \
      ~{if defined(info_file) then ("--info-file " +  '"' + info_file + '"') else ""} \
      ~{if defined(rest_file) then ("--rest-file " +  '"' + rest_file + '"') else ""} \
      ~{if defined(wildcard_file) then ("--wildcard-file " +  '"' + wildcard_file + '"') else ""} \
      ~{if defined(too_short_output) then ("--too-short-output " +  '"' + too_short_output + '"') else ""} \
      ~{if defined(too_long_output) then ("--too-long-output " +  '"' + too_long_output + '"') else ""} \
      ~{if defined(untrimmed_output) then ("--untrimmed-output " +  '"' + untrimmed_output + '"') else ""} \
      ~{if defined(merged_output) then ("--merged-output " +  '"' + merged_output + '"') else ""} \
      ~{if defined(report_file) then ("--report-file " +  '"' + report_file + '"') else ""} \
      ~{true="--report-formats" false="" report_formats} \
      ~{true="--stats" false="" stats} \
      ~{true="--double-encode" false="" double_encode} \
      ~{true="--trim-primer" false="" trim_primer} \
      ~{true="--strip-f3" false="" strip_f_three} \
      ~{true="--maq" false="" maq} \
      ~{true="--no-zero-cap" false="" no_zero_cap} \
      ~{true="--zero-cap" false="" zero_cap} \
      ~{if defined(adapter_two) then ("--adapter2 " +  '"' + adapter_two + '"') else ""} \
      ~{if defined(front_two) then ("--front2 " +  '"' + front_two + '"') else ""} \
      ~{if defined(anywhere_two) then ("--anywhere2 " +  '"' + anywhere_two + '"') else ""} \
      ~{if defined(cut_two) then ("--cut2 " +  '"' + cut_two + '"') else ""} \
      ~{if defined(cut_min_two) then ("--cut-min2 " +  '"' + cut_min_two + '"') else ""} \
      ~{if defined(highqwindow__overwritelowquality) then ("-w " +  '"' + highqwindow__overwritelowquality + '"') else ""} \
      ~{if defined(paired_output) then ("--paired-output " +  '"' + paired_output + '"') else ""} \
      ~{if defined(interleaved_output) then ("--interleaved-output " +  '"' + interleaved_output + '"') else ""} \
      ~{true="--pair-filter" false="" pair_filter} \
      ~{if defined(untrimmed_paired_output) then ("--untrimmed-paired-output " +  '"' + untrimmed_paired_output + '"') else ""} \
      ~{if defined(too_short_paired_output) then ("--too-short-paired-output " +  '"' + too_short_paired_output + '"') else ""} \
      ~{if defined(too_long_paired_output) then ("--too-long-paired-output " +  '"' + too_long_paired_output + '"') else ""} \
      ~{if defined(bisulfite) then ("--bisulfite " +  '"' + bisulfite + '"') else ""} \
      ~{true="--mirna" false="" mirna} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--no-writer-process" false="" no_writer_process} \
      ~{true="--preserve-order" false="" preserve_order} \
      ~{if defined(process_timeout) then ("--process-timeout " +  '"' + process_timeout + '"') else ""} \
      ~{if defined(read_queue_size) then ("--read-queue-size " +  '"' + read_queue_size + '"') else ""} \
      ~{if defined(result_queue_size) then ("--result-queue-size " +  '"' + result_queue_size + '"') else ""} \
      ~{if defined(compression) then ("--compression " +  '"' + compression + '"') else ""}
  >>>
  parameter_meta {
    debug: "Print debugging information. (no)"
    progress: "Show progress. bar = show progress bar; msg = show a status message. (no)"
    quiet: "Print only error messages. (no)"
    log_level: "Logging level. (ERROR when --quiet else INFO)"
    log_file: "File to write logging info. (stdout)"
    input_one: "The first input file."
    input_two: "The second input file."
    interleaved_input: "Interleaved input file."
    single_input: "A single-end read file."
    single_input_read: "When treating an interleaved FASTQ or paired-end SAM/BAM file as single-end, this option specifies which of the two reads to process. (both reads used)"
    single_quals: "A single-end qual file."
    sra_accession: "Accession to stream from SRA (requires optional NGS dependency to be installed)."
    format: "Input file format. Ignored when reading csfasta/qual files. (auto-detect from file name extension)"
    quality_base: "Assume that quality values in FASTQ are encoded as ascii(quality + QUALITY_BASE). This needs to be set to 64 for some old Illumina FASTQ files. (33)"
    color_space: "Enable colorspace mode: Also trim the color that is adjacent to the found adapter. (no)"
    max_reads: "Maximum number of reads/pairs to process (no max)"
    subsample: "Subsample a fraction of reads. (no)"
    subsample_seed: "The seed to use for the pseudorandom number generator. Using the same seed will result in the same subsampling of reads."
    batch_size: "Number of records to process in each batch. (1000)"
    sample_id: "Optional sample ID. Added to the summary output."
    alphabet: "Specify a sequence alphabet to use for validating inputs. Currently, only 'dna' is supported. (no validation)"
    adapter: "Sequence of an adapter ligated to the 3' end (paired data: of the first read). The adapter and subsequent bases are trimmed. If a '$' character is appended ('anchoring'), the adapter is only found if it is a suffix of the read. (none)"
    front: "Sequence of an adapter ligated to the 5' end (paired data: of the first read). The adapter and any preceding bases are trimmed. Partial matches at the 5' end are allowed. If a '^' character is prepended ('anchoring'), the adapter is only found if it is a prefix of the read. (none)"
    anywhere: "Sequence of an adapter that may be ligated to the 5' or 3' end (paired data: of the first read). Both types of matches as described under -a und -g are allowed. If the first base of the read is part of the match, the behavior is as with -g, otherwise as with -a. This option is mostly for rescuing failed library preparations - do not use if you know which end your adapter was ligated to! (none)"
    known_adapters_file: "Path or URL of a FASTA file containing adapter sequences."
    no_default_adapters: "Don't fetch the default adapter list (which is currently stored in GitHub)."
    adapter_cache_file: "File where adapter sequences will be cached, unless --no-cache-adapters is set."
    no_cache_adapters: "Don't cache adapters list as '.adapters' in the working directory."
    no_trim: "Match and redirect reads to output/untrimmed-output as usual, but do not remove adapters. (no)"
    mask_adapter: "Mask adapters with 'N' characters instead of trimming them. (no)"
    gc_content: "Expected GC content of sequences."
    aligner: "Which alignment algorithm to use for identifying adapters. Currently, you can choose between the semi- global alignment strategy used in Cutdapt ('adapter') or the more accurate insert-based alignment algorithm ('insert'). Note that insert-based alignment can only be used with paired-end reads containing 3' adapters. New algorithms are being implemented and the default is likely to change. (adapter)"
    error_rate: "Maximum allowed error rate for adapter match (no. of errors divided by the length of the matching region). (0.1)"
    in_del_cost: "Integer cost of insertions and deletions during adapter match. Substitutions always have a cost of 1. (1)"
    no_indels: "Allow only mismatches in alignments. (allow both mismatches and indels)"
    times: "Remove up to COUNT adapters from each read. (1)"
    match_read_wildcards: "Interpret IUPAC wildcards in reads. (no)"
    no_match_adapter_wildcards: "Do not interpret IUPAC wildcards in adapters. (no)"
    overlap: "If the overlap between the read and the adapter is shorter than MINLENGTH, the read is not modified. Reduces the no. of bases trimmed due to random adapter matches. (3)"
    adapter_max_rmp: "If no minimum overlap (-O) is specified, then adapters are only matched when the probabilty of observing k out of n matching bases is <= PROB. (1E-6)"
    insert_max_rmp: "Overlapping inserts only match when the probablity of observing k of n matching bases is <= PROB. (1E-6)"
    insert_match_error_rate: "Maximum allowed error rate for insert match (no. of errors divided by the length of the matching region). (0.2)"
    insert_match_adapter_error_rate: "Maximum allowed error rate for matching adapters after successful insert match (no. of errors divided by the length of the matching region). (0.2)"
    merge_overlapping: "Merge read pairs that overlap into a single sequence. This is experimental. (no)"
    merge_min_overlap: "The minimum overlap between reads required for merging. If this number is (0,1.0], it specifies the minimum length as the fraction of the length of the *shorter* read in the pair; otherwise it specifies the minimum number of overlapping base pairs (with an absolute minimum of 2 bp). (0.9)"
    merge_error_rate: "The maximum error rate for merging. (0.2)"
    correct_mismatches: "How to handle mismatches while aligning/merging. 'Liberal' and 'conservative' error correction both involve setting the base to the one with the best quality. They differ only when the qualities are equal -- liberal means set it to the base from the read with the overall best median base quality, while conservative means to leave it unchanged. 'N' means to set the base to N. If exactly one base is ambiguous, the non-ambiguous base is always used. (no error correction)"
    op_order: "The order in which trimming operations are be applied. This is a string of 1-5 of the following characters: A = adapter trimming; C = cutting (unconditional); G = NextSeq trimming; Q = quality trimming; W = overwrite poor quality reads. The default is 'WCGQA' to maintain compatibility with Cutadapt; however, this is likely to change to 'GAWCQ' in the near future."
    cut: "Remove bases from each read (first read only if paired). If LENGTH is positive, remove bases from the beginning. If LENGTH is negative, remove bases from the end. Can be used twice if LENGTHs have different signs. (no)"
    end_second_no: "[5'CUTOFF,]3'CUTOFF, --quality-cutoff [5'CUTOFF,]3'CUTOFF Trim low-quality bases from 5' and/or 3' ends of each read before adapter removal. Applied to both reads if data is paired. If one value is given, only the 3' end is trimmed. If two comma-separated cutoffs are given, the 5' end is trimmed with the first cutoff, the 3' end with the second. (no)"
    cut_min: "Similar to -u, except that cutting is done AFTER adapter trimming, and only if a minimum of LENGTH bases was not already removed. (no)"
    next_seq_trim: "'CUTOFF NextSeq-specific quality trimming (each read). Trims also dark cycles appearing as high-quality G bases (EXPERIMENTAL). (no)"
    trim_n: "Trim N's on ends of reads. (no)"
    prefix: "Add this prefix to read names. Use {name} to insert the name of the matching adapter. (no)"
    suffix: "Add this suffix to read names; can also include {name}. (no)"
    strip_suffix: "Remove this suffix from read names if present. Can be given multiple times. (no)"
    length_tag: "Search for TAG followed by a decimal number in the description field of the read. Replace the decimal number with the correct length of the trimmed read. For example, use --length-tag 'length=' to correct fields like 'length=123'. (no)"
    discard_trimmed: "Discard reads that contain an adapter. Also use -O to avoid discarding too many randomly matching reads! (no)"
    discard_untrimmed: "Discard reads that do not contain the adapter. (no)"
    minimum_length: "Discard trimmed reads that are shorter than LENGTH. Reads that are too short even before adapter removal are also discarded. In colorspace, an initial primer is not counted. (0)"
    maximum_length: "Discard trimmed reads that are longer than LENGTH. Reads that are too long even before adapter removal are also discarded. In colorspace, an initial primer is not counted. (no limit)"
    max_n: "Discard reads with too many N bases. If COUNT is an integer, it is treated as the absolute number of N bases. If it is between 0 and 1, it is treated as the proportion of N's allowed in a read. (no)"
    write_trimmed_reads: "Write trimmed reads to FILE. FASTQ or FASTA format is chosen depending on input. The summary report is sent to standard output. Use '{name}' in FILE to demultiplex reads into multiple files. (write to standard output)"
    info_file: "Write information about each read and its adapter matches into FILE. See the documentation for the file format. (no)"
    rest_file: "When the adapter matches in the middle of a read, write the rest (after the adapter) into FILE. (no)"
    wildcard_file: "When the adapter has N bases (wildcards), write adapter bases matching wildcard positions to FILE. When there are indels in the alignment, this will often not be accurate. (no)"
    too_short_output: "Write reads that are too short (according to length specified by -m) to FILE. (no - too short reads are discarded)"
    too_long_output: "Write reads that are too long (according to length specified by -M) to FILE. (no - too long reads are discarded)"
    untrimmed_output: "Write reads that do not contain the adapter to FILE. (no - untrimmed reads are written to default output)"
    merged_output: "Write reads that have been merged to this file. (merged reads are discarded)"
    report_file: "Write report to file rather than stdout/stderr. (no)"
    report_formats: "[FORMAT [FORMAT ...]] Report type(s) to generate. If multiple, '--report- file' is treated as a prefix and the appropriate extensions are appended. If unspecified, the format is guessed from the file extension. Supported formats are: txt (legacy text format), json, yaml, pickle. See the documentation for a full description of the structured output (json/yaml/pickle formats)."
    stats: "[STATS [STATS ...]] Which read-level statistics to compute. Can be 'none' (default), 'pre': only compute pre-trimming stats; 'post': only compute post-trimming stats; or 'both'. The keyword can be followed by ':' and then additional configuration parameters. E.g. 'pre:tiles' means to also collect tile-level statistics (Illumina data only), and 'pre:tiles=<regexp>' means to use the specified regular expression to extract key portions of read names to collect the tile statistics."
    double_encode: "Double-encode colors (map 0,1,2,3,4 to A,C,G,T,N). (no)"
    trim_primer: "Trim primer base and the first color (which is the transition to the first nucleotide). (no)"
    strip_f_three: "Strip the _F3 suffix of read names. (no)"
    maq: "MAQ- and BWA-compatible colorspace output. This enables -c, -d, -t, --strip-f3 and -y '/1'. (no)"
    no_zero_cap: "Do not change negative quality values to zero in colorspace data. By default, they are since many tools have problems with negative qualities. (no)"
    zero_cap: "Change negative quality values to zero. This is enabled by default when -c/--colorspace is also enabled. Use the above option to disable it. (no)"
    adapter_two: "3' adapter to be removed from second read in a pair. (no)"
    front_two: "5' adapter to be removed from second read in a pair. (no)"
    anywhere_two: "5'/3 adapter to be removed from second read in a pair. (no)"
    cut_two: "Remove LENGTH bases from second read in a pair (see --cut). (no)"
    cut_min_two: "Similar to -U, except that cutting is done AFTER adapter trimming, and only if a minimum of LENGTH bases was not already removed (see --cut-min). (no)"
    highqwindow__overwritelowquality: ",HIGHQ,WINDOW, --overwrite-low-quality LOWQ,HIGHQ,WINDOW When one read has mean quality < LOWQ and the other read has mean quality >= HIGHQ over the first WINDOW bases, overwrite the worse read with the better read."
    paired_output: "Write second read in a pair to FILE. (no)"
    interleaved_output: "Write output to interleaved file."
    pair_filter: "(any|both) Which of the reads in a paired-end read have to match the filtering criterion in order for it to be filtered. (any)"
    untrimmed_paired_output: "Write second read in a pair to this FILE when no adapter was found in the first read. Use this option together with --untrimmed-output when trimming paired- end reads. (no - output to same file as trimmed reads)"
    too_short_paired_output: "Write second read in a pair to this file if pair is too short. Use together with --too-short-output. (no - too short reads are discarded)"
    too_long_paired_output: "Write second read in a pair to this file if pair is too long. Use together with --too-long-output. (no - too long reads are discarded)"
    bisulfite: "Set default option values for bisulfite-treated data. The argument specifies the type of bisulfite library (rrbs, non-directional, non-directional-rrbs, truseq, epignome, or swift) or custom parameters for trimming: '<read1>[;<read2>]' where trimming parameters for each read are: '<5' cut>,<3' cut>,<include trimmed>,<only trimmed>' where 'include trimmed' is 1 or 0 for whether or not the bases already trimmed during/prior to adapter trimming should be counted towards the total bases to be cut and 'only trimmed' is 1 or 0 for whether or not only trimmed reads should be further cut. (no)"
    mirna: "Set default option values for miRNA data. (no)"
    threads: "Number of threads to use for read trimming. Set to 0 to use max available threads. (Do not use multithreading)"
    no_writer_process: "Do not use a writer process; instead, each worker thread writes its own output to a file with a '.N' suffix. (no)"
    preserve_order: "Preserve order of reads in input files (ignored if --no-writer-process is set). (no)"
    process_timeout: "Number of seconds process should wait before escalating messages to ERROR level. (60)"
    read_queue_size: "Size of queue for batches of reads to be processed. (THREADS * 100)"
    result_queue_size: "Size of queue for batches of results to be written. (THREADS * 100)"
    compression: "Where data compression should be performed. Defaults to 'writer' if system-level compression can be used and (1 < threads < 8), otherwise defaults to 'worker'."
  }
}