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
    Int? quality_base
    Boolean? color_space
    Int? max_reads
    String? subsample
    Int? subsample_seed
    Int? batch_size
    String? sample_id
    String? alphabet
    Int? adapter
    Int? front
    Int? anywhere
    File? known_adapters_file
    Boolean? no_default_adapters
    File? adapter_cache_file
    Boolean? no_cache_adapters
    Boolean? no_trim
    Boolean? mask_adapter
    String? gc_content
    String? aligner
    Int? error_rate
    Int? in_del_cost
    Boolean? no_indels
    Int? times
    Boolean? match_read_wildcards
    Boolean? no_match_adapter_wildcards
    Int? overlap
    Int? adapter_max_rmp
    Int? insert_max_rmp
    Int? insert_match_error_rate
    Int? insert_match_adapter_error_rate
    Boolean? merge_overlapping
    Int? merge_min_overlap
    Float? merge_error_rate
    String? correct_mismatches
    String? op_order
    Int? cut
    Boolean? cutofftrim_lowquality_bases
    Int? cut_min
    Int? next_seq_trim
    Boolean? trim_n
    String? prefix
    String? suffix
    String? strip_suffix
    Int? length_tag
    Boolean? discard_trimmed
    Boolean? discard_untrimmed
    Int? minimum_length
    Int? maximum_length
    Int? max_n
    File? write_trimmed_reads
    File? info_file
    File? rest_file
    File? wildcard_file
    File? too_short_output
    File? too_long_output
    File? untrimmed_output
    File? merged_output
    File? report_file
    File? report_formats
    Boolean? stats
    Boolean? double_encode
    Boolean? trim_primer
    Boolean? strip_f_three
    Boolean? maq
    Boolean? no_zero_cap
    Boolean? zero_cap
    Int? adapter_two
    Int? front_two
    Int? anywhere_two
    Int? cut_two
    Int? cut_min_two
    String? highqwindow__overwritelowquality
    File? paired_output
    File? interleaved_output
    Boolean? pair_filter
    File? untrimmed_paired_output
    File? too_short_paired_output
    File? too_long_paired_output
    Int? bisulfite
    Boolean? mirna
    Int? threads
    File? no_writer_process
    Boolean? preserve_order
    Int? process_timeout
    Int? read_queue_size
    Int? result_queue_size
    String? compression
  }
  command <<<
    atropos trim \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(progress) then ("--progress " +  '"' + progress + '"') else ""} \
      ~{if (quiet) then "--quiet" else ""} \
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
      ~{if (color_space) then "--colorspace" else ""} \
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
      ~{if (no_default_adapters) then "--no-default-adapters" else ""} \
      ~{if defined(adapter_cache_file) then ("--adapter-cache-file " +  '"' + adapter_cache_file + '"') else ""} \
      ~{if (no_cache_adapters) then "--no-cache-adapters" else ""} \
      ~{if (no_trim) then "--no-trim" else ""} \
      ~{if (mask_adapter) then "--mask-adapter" else ""} \
      ~{if defined(gc_content) then ("--gc-content " +  '"' + gc_content + '"') else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if defined(error_rate) then ("--error-rate " +  '"' + error_rate + '"') else ""} \
      ~{if defined(in_del_cost) then ("--indel-cost " +  '"' + in_del_cost + '"') else ""} \
      ~{if (no_indels) then "--no-indels" else ""} \
      ~{if defined(times) then ("--times " +  '"' + times + '"') else ""} \
      ~{if (match_read_wildcards) then "--match-read-wildcards" else ""} \
      ~{if (no_match_adapter_wildcards) then "--no-match-adapter-wildcards" else ""} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""} \
      ~{if defined(adapter_max_rmp) then ("--adapter-max-rmp " +  '"' + adapter_max_rmp + '"') else ""} \
      ~{if defined(insert_max_rmp) then ("--insert-max-rmp " +  '"' + insert_max_rmp + '"') else ""} \
      ~{if defined(insert_match_error_rate) then ("--insert-match-error-rate " +  '"' + insert_match_error_rate + '"') else ""} \
      ~{if defined(insert_match_adapter_error_rate) then ("--insert-match-adapter-error-rate " +  '"' + insert_match_adapter_error_rate + '"') else ""} \
      ~{if (merge_overlapping) then "--merge-overlapping" else ""} \
      ~{if defined(merge_min_overlap) then ("--merge-min-overlap " +  '"' + merge_min_overlap + '"') else ""} \
      ~{if defined(merge_error_rate) then ("--merge-error-rate " +  '"' + merge_error_rate + '"') else ""} \
      ~{if defined(correct_mismatches) then ("--correct-mismatches " +  '"' + correct_mismatches + '"') else ""} \
      ~{if defined(op_order) then ("--op-order " +  '"' + op_order + '"') else ""} \
      ~{if defined(cut) then ("--cut " +  '"' + cut + '"') else ""} \
      ~{if (cutofftrim_lowquality_bases) then "-q" else ""} \
      ~{if defined(cut_min) then ("--cut-min " +  '"' + cut_min + '"') else ""} \
      ~{if defined(next_seq_trim) then ("--nextseq-trim " +  '"' + next_seq_trim + '"') else ""} \
      ~{if (trim_n) then "--trim-n" else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if defined(strip_suffix) then ("--strip-suffix " +  '"' + strip_suffix + '"') else ""} \
      ~{if defined(length_tag) then ("--length-tag " +  '"' + length_tag + '"') else ""} \
      ~{if (discard_trimmed) then "--discard-trimmed" else ""} \
      ~{if (discard_untrimmed) then "--discard-untrimmed" else ""} \
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
      ~{if (report_formats) then "--report-formats" else ""} \
      ~{if (stats) then "--stats" else ""} \
      ~{if (double_encode) then "--double-encode" else ""} \
      ~{if (trim_primer) then "--trim-primer" else ""} \
      ~{if (strip_f_three) then "--strip-f3" else ""} \
      ~{if (maq) then "--maq" else ""} \
      ~{if (no_zero_cap) then "--no-zero-cap" else ""} \
      ~{if (zero_cap) then "--zero-cap" else ""} \
      ~{if defined(adapter_two) then ("--adapter2 " +  '"' + adapter_two + '"') else ""} \
      ~{if defined(front_two) then ("--front2 " +  '"' + front_two + '"') else ""} \
      ~{if defined(anywhere_two) then ("--anywhere2 " +  '"' + anywhere_two + '"') else ""} \
      ~{if defined(cut_two) then ("--cut2 " +  '"' + cut_two + '"') else ""} \
      ~{if defined(cut_min_two) then ("--cut-min2 " +  '"' + cut_min_two + '"') else ""} \
      ~{if defined(highqwindow__overwritelowquality) then ("-w " +  '"' + highqwindow__overwritelowquality + '"') else ""} \
      ~{if defined(paired_output) then ("--paired-output " +  '"' + paired_output + '"') else ""} \
      ~{if defined(interleaved_output) then ("--interleaved-output " +  '"' + interleaved_output + '"') else ""} \
      ~{if (pair_filter) then "--pair-filter" else ""} \
      ~{if defined(untrimmed_paired_output) then ("--untrimmed-paired-output " +  '"' + untrimmed_paired_output + '"') else ""} \
      ~{if defined(too_short_paired_output) then ("--too-short-paired-output " +  '"' + too_short_paired_output + '"') else ""} \
      ~{if defined(too_long_paired_output) then ("--too-long-paired-output " +  '"' + too_long_paired_output + '"') else ""} \
      ~{if defined(bisulfite) then ("--bisulfite " +  '"' + bisulfite + '"') else ""} \
      ~{if (mirna) then "--mirna" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (no_writer_process) then "--no-writer-process" else ""} \
      ~{if (preserve_order) then "--preserve-order" else ""} \
      ~{if defined(process_timeout) then ("--process-timeout " +  '"' + process_timeout + '"') else ""} \
      ~{if defined(read_queue_size) then ("--read-queue-size " +  '"' + read_queue_size + '"') else ""} \
      ~{if defined(result_queue_size) then ("--result-queue-size " +  '"' + result_queue_size + '"') else ""} \
      ~{if defined(compression) then ("--compression " +  '"' + compression + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    debug: "Print debugging information. (no)"
    progress: "Show progress. bar = show progress bar; msg = show a\\nstatus message. (no)"
    quiet: "Print only error messages. (no)"
    log_level: "Logging level. (ERROR when --quiet else INFO)"
    log_file: "File to write logging info. (stdout)"
    input_one: "The first input file."
    input_two: "The second input file."
    interleaved_input: "Interleaved input file."
    single_input: "A single-end read file."
    single_input_read: "When treating an interleaved FASTQ or paired-end\\nSAM/BAM file as single-end, this option specifies\\nwhich of the two reads to process. (both reads used)"
    single_quals: "A single-end qual file."
    sra_accession: "Accession to stream from SRA (requires optional NGS\\ndependency to be installed)."
    format: "Input file format. Ignored when reading csfasta/qual\\nfiles. (auto-detect from file name extension)"
    quality_base: "Assume that quality values in FASTQ are encoded as\\nascii(quality + QUALITY_BASE). This needs to be set to\\n64 for some old Illumina FASTQ files. (33)"
    color_space: "Enable colorspace mode: Also trim the color that is\\nadjacent to the found adapter. (no)"
    max_reads: "Maximum number of reads/pairs to process (no max)"
    subsample: "Subsample a fraction of reads. (no)"
    subsample_seed: "The seed to use for the pseudorandom number generator.\\nUsing the same seed will result in the same\\nsubsampling of reads."
    batch_size: "Number of records to process in each batch. (1000)"
    sample_id: "Optional sample ID. Added to the summary output."
    alphabet: "Specify a sequence alphabet to use for validating\\ninputs. Currently, only 'dna' is supported. (no\\nvalidation)"
    adapter: "Sequence of an adapter ligated to the 3' end (paired\\ndata: of the first read). The adapter and subsequent\\nbases are trimmed. If a '$' character is appended\\n('anchoring'), the adapter is only found if it is a\\nsuffix of the read. (none)"
    front: "Sequence of an adapter ligated to the 5' end (paired\\ndata: of the first read). The adapter and any\\npreceding bases are trimmed. Partial matches at the 5'\\nend are allowed. If a '^' character is prepended\\n('anchoring'), the adapter is only found if it is a\\nprefix of the read. (none)"
    anywhere: "Sequence of an adapter that may be ligated to the 5'\\nor 3' end (paired data: of the first read). Both types\\nof matches as described under -a und -g are allowed.\\nIf the first base of the read is part of the match,\\nthe behavior is as with -g, otherwise as with -a. This\\noption is mostly for rescuing failed library\\npreparations - do not use if you know which end your\\nadapter was ligated to! (none)"
    known_adapters_file: "Path or URL of a FASTA file containing adapter\\nsequences."
    no_default_adapters: "Don't fetch the default adapter list (which is\\ncurrently stored in GitHub)."
    adapter_cache_file: "File where adapter sequences will be cached, unless\\n--no-cache-adapters is set."
    no_cache_adapters: "Don't cache adapters list as '.adapters' in the\\nworking directory."
    no_trim: "Match and redirect reads to output/untrimmed-output as\\nusual, but do not remove adapters. (no)"
    mask_adapter: "Mask adapters with 'N' characters instead of trimming\\nthem. (no)"
    gc_content: "Expected GC content of sequences."
    aligner: "Which alignment algorithm to use for identifying\\nadapters. Currently, you can choose between the semi-\\nglobal alignment strategy used in Cutdapt ('adapter')\\nor the more accurate insert-based alignment algorithm\\n('insert'). Note that insert-based alignment can only\\nbe used with paired-end reads containing 3' adapters.\\nNew algorithms are being implemented and the default\\nis likely to change. (adapter)"
    error_rate: "Maximum allowed error rate for adapter match (no. of\\nerrors divided by the length of the matching region).\\n(0.1)"
    in_del_cost: "Integer cost of insertions and deletions during\\nadapter match. Substitutions always have a cost of 1.\\n(1)"
    no_indels: "Allow only mismatches in alignments. (allow both\\nmismatches and indels)"
    times: "Remove up to COUNT adapters from each read. (1)"
    match_read_wildcards: "Interpret IUPAC wildcards in reads. (no)"
    no_match_adapter_wildcards: "Do not interpret IUPAC wildcards in adapters. (no)"
    overlap: "If the overlap between the read and the adapter is\\nshorter than MINLENGTH, the read is not modified.\\nReduces the no. of bases trimmed due to random adapter\\nmatches. (3)"
    adapter_max_rmp: "If no minimum overlap (-O) is specified, then adapters\\nare only matched when the probabilty of observing k\\nout of n matching bases is <= PROB. (1E-6)"
    insert_max_rmp: "Overlapping inserts only match when the probablity of\\nobserving k of n matching bases is <= PROB. (1E-6)"
    insert_match_error_rate: "Maximum allowed error rate for insert match (no. of\\nerrors divided by the length of the matching region).\\n(0.2)"
    insert_match_adapter_error_rate: "Maximum allowed error rate for matching adapters after\\nsuccessful insert match (no. of errors divided by the\\nlength of the matching region). (0.2)"
    merge_overlapping: "Merge read pairs that overlap into a single sequence.\\nThis is experimental. (no)"
    merge_min_overlap: "The minimum overlap between reads required for\\nmerging. If this number is (0,1.0], it specifies the\\nminimum length as the fraction of the length of the\\n*shorter* read in the pair; otherwise it specifies the\\nminimum number of overlapping base pairs (with an\\nabsolute minimum of 2 bp). (0.9)"
    merge_error_rate: "The maximum error rate for merging. (0.2)"
    correct_mismatches: "How to handle mismatches while aligning/merging.\\n'Liberal' and 'conservative' error correction both\\ninvolve setting the base to the one with the best\\nquality. They differ only when the qualities are equal\\n-- liberal means set it to the base from the read with\\nthe overall best median base quality, while\\nconservative means to leave it unchanged. 'N' means to\\nset the base to N. If exactly one base is ambiguous,\\nthe non-ambiguous base is always used. (no error\\ncorrection)"
    op_order: "The order in which trimming operations are be applied.\\nThis is a string of 1-5 of the following characters: A\\n= adapter trimming; C = cutting (unconditional); G =\\nNextSeq trimming; Q = quality trimming; W = overwrite\\npoor quality reads. The default is 'WCGQA' to maintain\\ncompatibility with Cutadapt; however, this is likely\\nto change to 'GAWCQ' in the near future."
    cut: "Remove bases from each read (first read only if\\npaired). If LENGTH is positive, remove bases from the\\nbeginning. If LENGTH is negative, remove bases from\\nthe end. Can be used twice if LENGTHs have different\\nsigns. (no)"
    cutofftrim_lowquality_bases: "[5'CUTOFF,]3'CUTOFF, --quality-cutoff [5'CUTOFF,]3'CUTOFF\\nTrim low-quality bases from 5' and/or 3' ends of each\\nread before adapter removal. Applied to both reads if\\ndata is paired. If one value is given, only the 3' end\\nis trimmed. If two comma-separated cutoffs are given,\\nthe 5' end is trimmed with the first cutoff, the 3'\\nend with the second. (no)"
    cut_min: "Similar to -u, except that cutting is done AFTER\\nadapter trimming, and only if a minimum of LENGTH\\nbases was not already removed. (no)"
    next_seq_trim: "'CUTOFF\\nNextSeq-specific quality trimming (each read). Trims\\nalso dark cycles appearing as high-quality G bases\\n(EXPERIMENTAL). (no)"
    trim_n: "Trim N's on ends of reads. (no)"
    prefix: "Add this prefix to read names. Use {name} to insert\\nthe name of the matching adapter. (no)"
    suffix: "Add this suffix to read names; can also include\\n{name}. (no)"
    strip_suffix: "Remove this suffix from read names if present. Can be\\ngiven multiple times. (no)"
    length_tag: "Search for TAG followed by a decimal number in the\\ndescription field of the read. Replace the decimal\\nnumber with the correct length of the trimmed read.\\nFor example, use --length-tag 'length=' to correct\\nfields like 'length=123'. (no)"
    discard_trimmed: "Discard reads that contain an adapter. Also use -O to\\navoid discarding too many randomly matching reads!\\n(no)"
    discard_untrimmed: "Discard reads that do not contain the adapter. (no)"
    minimum_length: "Discard trimmed reads that are shorter than LENGTH.\\nReads that are too short even before adapter removal\\nare also discarded. In colorspace, an initial primer\\nis not counted. (0)"
    maximum_length: "Discard trimmed reads that are longer than LENGTH.\\nReads that are too long even before adapter removal\\nare also discarded. In colorspace, an initial primer\\nis not counted. (no limit)"
    max_n: "Discard reads with too many N bases. If COUNT is an\\ninteger, it is treated as the absolute number of N\\nbases. If it is between 0 and 1, it is treated as the\\nproportion of N's allowed in a read. (no)"
    write_trimmed_reads: "Write trimmed reads to FILE. FASTQ or FASTA format is\\nchosen depending on input. The summary report is sent\\nto standard output. Use '{name}' in FILE to\\ndemultiplex reads into multiple files. (write to\\nstandard output)"
    info_file: "Write information about each read and its adapter\\nmatches into FILE. See the documentation for the file\\nformat. (no)"
    rest_file: "When the adapter matches in the middle of a read,\\nwrite the rest (after the adapter) into FILE. (no)"
    wildcard_file: "When the adapter has N bases (wildcards), write\\nadapter bases matching wildcard positions to FILE.\\nWhen there are indels in the alignment, this will\\noften not be accurate. (no)"
    too_short_output: "Write reads that are too short (according to length\\nspecified by -m) to FILE. (no - too short reads are\\ndiscarded)"
    too_long_output: "Write reads that are too long (according to length\\nspecified by -M) to FILE. (no - too long reads are\\ndiscarded)"
    untrimmed_output: "Write reads that do not contain the adapter to FILE.\\n(no - untrimmed reads are written to default output)"
    merged_output: "Write reads that have been merged to this file.\\n(merged reads are discarded)"
    report_file: "Write report to file rather than stdout/stderr. (no)"
    report_formats: "[FORMAT [FORMAT ...]]\\nReport type(s) to generate. If multiple, '--report-\\nfile' is treated as a prefix and the appropriate\\nextensions are appended. If unspecified, the format is\\nguessed from the file extension. Supported formats\\nare: txt (legacy text format), json, yaml, pickle. See\\nthe documentation for a full description of the\\nstructured output (json/yaml/pickle formats)."
    stats: "[STATS [STATS ...]]\\nWhich read-level statistics to compute. Can be 'none'\\n(default), 'pre': only compute pre-trimming stats;\\n'post': only compute post-trimming stats; or 'both'.\\nThe keyword can be followed by ':' and then additional\\nconfiguration parameters. E.g. 'pre:tiles' means to\\nalso collect tile-level statistics (Illumina data\\nonly), and 'pre:tiles=<regexp>' means to use the\\nspecified regular expression to extract key portions\\nof read names to collect the tile statistics."
    double_encode: "Double-encode colors (map 0,1,2,3,4 to A,C,G,T,N).\\n(no)"
    trim_primer: "Trim primer base and the first color (which is the\\ntransition to the first nucleotide). (no)"
    strip_f_three: "Strip the _F3 suffix of read names. (no)"
    maq: "MAQ- and BWA-compatible colorspace output. This\\nenables -c, -d, -t, --strip-f3 and -y '/1'. (no)"
    no_zero_cap: "Do not change negative quality values to zero in\\ncolorspace data. By default, they are since many tools\\nhave problems with negative qualities. (no)"
    zero_cap: "Change negative quality values to zero. This is\\nenabled by default when -c/--colorspace is also\\nenabled. Use the above option to disable it. (no)"
    adapter_two: "3' adapter to be removed from second read in a pair.\\n(no)"
    front_two: "5' adapter to be removed from second read in a pair.\\n(no)"
    anywhere_two: "5'/3 adapter to be removed from second read in a pair.\\n(no)"
    cut_two: "Remove LENGTH bases from second read in a pair (see\\n--cut). (no)"
    cut_min_two: "Similar to -U, except that cutting is done AFTER\\nadapter trimming, and only if a minimum of LENGTH\\nbases was not already removed (see --cut-min). (no)"
    highqwindow__overwritelowquality: ",HIGHQ,WINDOW, --overwrite-low-quality LOWQ,HIGHQ,WINDOW\\nWhen one read has mean quality < LOWQ and the other\\nread has mean quality >= HIGHQ over the first WINDOW\\nbases, overwrite the worse read with the better read."
    paired_output: "Write second read in a pair to FILE. (no)"
    interleaved_output: "Write output to interleaved file."
    pair_filter: "(any|both)\\nWhich of the reads in a paired-end read have to match\\nthe filtering criterion in order for it to be\\nfiltered. (any)"
    untrimmed_paired_output: "Write second read in a pair to this FILE when no\\nadapter was found in the first read. Use this option\\ntogether with --untrimmed-output when trimming paired-\\nend reads. (no - output to same file as trimmed reads)"
    too_short_paired_output: "Write second read in a pair to this file if pair is\\ntoo short. Use together with --too-short-output. (no -\\ntoo short reads are discarded)"
    too_long_paired_output: "Write second read in a pair to this file if pair is\\ntoo long. Use together with --too-long-output. (no -\\ntoo long reads are discarded)"
    bisulfite: "Set default option values for bisulfite-treated data.\\nThe argument specifies the type of bisulfite library\\n(rrbs, non-directional, non-directional-rrbs, truseq,\\nepignome, or swift) or custom parameters for trimming:\\n'<read1>[;<read2>]' where trimming parameters for each\\nread are: '<5' cut>,<3' cut>,<include trimmed>,<only\\ntrimmed>' where 'include trimmed' is 1 or 0 for\\nwhether or not the bases already trimmed during/prior\\nto adapter trimming should be counted towards the\\ntotal bases to be cut and 'only trimmed' is 1 or 0 for\\nwhether or not only trimmed reads should be further\\ncut. (no)"
    mirna: "Set default option values for miRNA data. (no)"
    threads: "Number of threads to use for read trimming. Set to 0\\nto use max available threads. (Do not use\\nmultithreading)"
    no_writer_process: "Do not use a writer process; instead, each worker\\nthread writes its own output to a file with a '.N'\\nsuffix. (no)"
    preserve_order: "Preserve order of reads in input files (ignored if"
    process_timeout: "Number of seconds process should wait before\\nescalating messages to ERROR level. (60)"
    read_queue_size: "Size of queue for batches of reads to be processed.\\n(THREADS * 100)"
    result_queue_size: "Size of queue for batches of results to be written.\\n(THREADS * 100)"
    compression: "Where data compression should be performed. Defaults\\nto 'writer' if system-level compression can be used\\nand (1 < threads < 8), otherwise defaults to 'worker'.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_untrimmed_output = "${in_untrimmed_output}"
    File out_report_formats = "${in_report_formats}"
    File out_interleaved_output = "${in_interleaved_output}"
    File out_untrimmed_paired_output = "${in_untrimmed_paired_output}"
    File out_too_short_paired_output = "${in_too_short_paired_output}"
    File out_too_long_paired_output = "${in_too_long_paired_output}"
    File out_no_writer_process = "${in_no_writer_process}"
  }
}