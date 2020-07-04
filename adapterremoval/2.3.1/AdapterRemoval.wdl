version 1.0

task AdapterRemoval {
  input {
    Boolean? identify_adapters
    String? threads
    String? quality_base
    String? quality_base_output
    String? quality_max
    String? mate_separator
    Boolean? interleaved
    Boolean? interleaved_input
    Boolean? interleaved_output
    Boolean? combined_output
    String? basename
    File? settings
    File? output_one
    File? output_two
    File? singleton
    File? output_collapsed
    File? output_collapsed_truncated
    File? discarded
    Boolean? gzip
    String? gzip_level
    Boolean? bzip_two
    String? bzip_two_level
    Boolean? trim_ns
    Int? max_ns
    Boolean? trim_qualities
    Int? trim_windows
    String? min_quality
    Boolean? preserve_five_p
    Int? minlength
    Int? maxlength
    Boolean? collapse
    Boolean? collapse_deterministic
    Int? min_alignment_length
    String? seed
    File? barcode_list
    String? barcode_mm
    String? barcode_mm_r_one
    String? barcode_mm_r_two
    Boolean? demultiplex_only
  }
  command <<<
    AdapterRemoval \
      ~{true="--identify-adapters" false="" identify_adapters} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(quality_base) then ("--qualitybase " +  '"' + quality_base + '"') else ""} \
      ~{if defined(quality_base_output) then ("--qualitybase-output " +  '"' + quality_base_output + '"') else ""} \
      ~{if defined(quality_max) then ("--qualitymax " +  '"' + quality_max + '"') else ""} \
      ~{if defined(mate_separator) then ("--mate-separator " +  '"' + mate_separator + '"') else ""} \
      ~{true="--interleaved" false="" interleaved} \
      ~{true="--interleaved-input" false="" interleaved_input} \
      ~{true="--interleaved-output" false="" interleaved_output} \
      ~{true="--combined-output" false="" combined_output} \
      ~{if defined(basename) then ("--basename " +  '"' + basename + '"') else ""} \
      ~{if defined(settings) then ("--settings " +  '"' + settings + '"') else ""} \
      ~{if defined(output_one) then ("--output1 " +  '"' + output_one + '"') else ""} \
      ~{if defined(output_two) then ("--output2 " +  '"' + output_two + '"') else ""} \
      ~{if defined(singleton) then ("--singleton " +  '"' + singleton + '"') else ""} \
      ~{if defined(output_collapsed) then ("--outputcollapsed " +  '"' + output_collapsed + '"') else ""} \
      ~{if defined(output_collapsed_truncated) then ("--outputcollapsedtruncated " +  '"' + output_collapsed_truncated + '"') else ""} \
      ~{if defined(discarded) then ("--discarded " +  '"' + discarded + '"') else ""} \
      ~{true="--gzip" false="" gzip} \
      ~{if defined(gzip_level) then ("--gzip-level " +  '"' + gzip_level + '"') else ""} \
      ~{true="--bzip2" false="" bzip_two} \
      ~{if defined(bzip_two_level) then ("--bzip2-level " +  '"' + bzip_two_level + '"') else ""} \
      ~{true="--trimns" false="" trim_ns} \
      ~{if defined(max_ns) then ("--maxns " +  '"' + max_ns + '"') else ""} \
      ~{true="--trimqualities" false="" trim_qualities} \
      ~{if defined(trim_windows) then ("--trimwindows " +  '"' + trim_windows + '"') else ""} \
      ~{if defined(min_quality) then ("--minquality " +  '"' + min_quality + '"') else ""} \
      ~{true="--preserve5p" false="" preserve_five_p} \
      ~{if defined(minlength) then ("--minlength " +  '"' + minlength + '"') else ""} \
      ~{if defined(maxlength) then ("--maxlength " +  '"' + maxlength + '"') else ""} \
      ~{true="--collapse" false="" collapse} \
      ~{true="--collapse-deterministic" false="" collapse_deterministic} \
      ~{if defined(min_alignment_length) then ("--minalignmentlength " +  '"' + min_alignment_length + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(barcode_list) then ("--barcode-list " +  '"' + barcode_list + '"') else ""} \
      ~{if defined(barcode_mm) then ("--barcode-mm " +  '"' + barcode_mm + '"') else ""} \
      ~{if defined(barcode_mm_r_one) then ("--barcode-mm-r1 " +  '"' + barcode_mm_r_one + '"') else ""} \
      ~{if defined(barcode_mm_r_two) then ("--barcode-mm-r2 " +  '"' + barcode_mm_r_two + '"') else ""} \
      ~{true="--demultiplex-only" false="" demultiplex_only}
  >>>
  parameter_meta {
    identify_adapters: "Attempt to identify the adapter pair of PE reads, by searching for overlapping mate reads [default: off]."
    threads: "Maximum number of threads [default: 1]"
    quality_base: "Quality base used to encode Phred scores in input; either 33, 64, or solexa [default: 33]."
    quality_base_output: "Quality base used to encode Phred scores in output; either 33, 64, or solexa. By default, reads will be written in the same format as the that specified using --qualitybase."
    quality_max: "Specifies the maximum Phred score expected in input files, and used when writing output. ASCII encoded values are limited to the characters '!' (ASCII = 33) to '~' (ASCII = 126), meaning that possible scores are 0 - 93 with offset 33, and 0 - 62 for offset 64 and Solexa scores [default: 41]."
    mate_separator: "Character separating the mate number (1 or 2) from the read name in FASTQ records [default: '/']."
    interleaved: "This option enables both the --interleaved-input option and the --interleaved-output option [default: off]."
    interleaved_input: "The (single) input file provided contains both the mate 1 and mate 2 reads, one pair after the other, with one mate 1 reads followed by one mate 2 read. This option is implied by the --interleaved option [default: off]."
    interleaved_output: "If set, trimmed paired-end reads are written to a single file containing mate 1 and mate 2 reads, one pair after the other. This option is implied by the --interleaved option [default: off]."
    combined_output: "If set, all reads are written to the same file(s), specified by --output1 and --output2 (--output1 only if --interleaved-output is not set). Discarded reads are replaced with a single 'N' with Phred score 0 [default: off]."
    basename: "Default prefix for all output files for which no filename was explicitly set [default: your_output]."
    settings: "Output file containing information on the parameters used in the run as well as overall statistics on the reads after trimming [default: BASENAME.settings]"
    output_one: "Output file containing trimmed mate1 reads [default: BASENAME.pair1.truncated (PE), BASENAME.truncated (SE), or BASENAME.paired.truncated (interleaved PE)]"
    output_two: "Output file containing trimmed mate 2 reads [default: BASENAME.pair2.truncated (only used in PE mode, but not if --interleaved-output is enabled)]"
    singleton: "Output file to which containing paired reads for which the mate has been discarded [default: BASENAME.singleton.truncated]"
    output_collapsed: "If --collapsed is set, contains overlapping mate-pairs which have been merged into a single read (PE mode) or reads for which the adapter was identified by a minimum overlap, indicating that the entire template molecule is present. This does not include which have subsequently been trimmed due to low-quality or ambiguous nucleotides [default: BASENAME.collapsed]"
    output_collapsed_truncated: "Collapsed reads (see --outputcollapsed) which were trimmed due the presence of low-quality or ambiguous nucleotides [default: BASENAME.collapsed.truncated]"
    discarded: "Contains reads discarded due to the --minlength, --maxlength or --maxns options [default: BASENAME.discarded]"
    gzip: "Enable gzip compression [default: off]"
    gzip_level: "Compression level, 0 - 9 [default: 6]"
    bzip_two: "Enable bzip2 compression [default: off]"
    bzip_two_level: "Compression level, 0 - 9 [default: 9]"
    trim_ns: "If set, trim ambiguous bases (N) at 5'/3' termini [default: off]"
    max_ns: "Reads containing more ambiguous bases (N) than this number after trimming are discarded [default: 1000]."
    trim_qualities: "If set, trim bases at 5'/3' termini with quality scores <= to --minquality value [default: off]"
    trim_windows: "If set, quality trimming will be carried out using window based approach, where windows with an average quality less than --minquality will be trimmed. If >= 1, this value will be used as the window size. If the value is < 1, the value will be multiplied with the read length to determine a window size per read. If the resulting window size is 0 or larger than the read length, the read length is used as the window size. This option implies --trimqualities [default: <not set>]."
    min_quality: "Inclusive minimum; see --trimqualities for details [default: 2]"
    preserve_five_p: "If set, bases at the 5p will not be trimmed by --trimns, --trimqualities, and --trimwindows. Collapsed reads will not be quality trimmed when this option is enabled [default: 5p bases are trimmed]"
    minlength: "Reads shorter than this length are discarded following trimming [default: 15]."
    maxlength: "Reads longer than this length are discarded following trimming [default: 4294967295]."
    collapse: "When set, paired ended read alignments of --minalignmentlength or more bases are combined into a single consensus sequence, representing the complete insert, and written to either basename.collapsed or basename.collapsed.truncated (if trimmed due to low-quality bases following collapse); for single-ended reads, putative complete inserts are identified as having at least --minalignmentlength bases overlap with the adapter sequence, and are written to the the same files [default: off]."
    collapse_deterministic: "In standard --collapse mode, AdapterRemoval will randomly select one of two different overlapping bases if these have the same quality (otherwise it picks the highest quality base). With --collapse-deterministic, AdapterRemoval will instead set such bases to N. This option implies --collapse [default: off]."
    min_alignment_length: "If --collapse is set, paired reads must overlap at least this number of bases to be collapsed, and single-ended reads must overlap at least this number of bases with the adapter to be considered complete template molecules [default: 11]."
    seed: "Sets the RNG seed used when choosing between bases with equal Phred scores when --collapse is enabled. This option is not available if more than one thread is used. If not specified, aseed is generated using the current time."
    barcode_list: "List of barcodes or barcode pairs for single or double-indexed demultiplexing. Note that both indexes should be specified for both single-end and paired-end trimming, if double-indexed multiplexing was used, in order to ensure that the demultiplexed reads can be trimmed correctly [default: <not set>]."
    barcode_mm: "Maximum number of mismatches allowed when counting mismatches in both the mate 1 and the mate 2 barcode for paired reads."
    barcode_mm_r_one: "Maximum number of mismatches allowed for the mate 1 barcode; if not set, this value is equal to the '--barcode-mm' value; cannot be higher than the '--barcode-mm value'."
    barcode_mm_r_two: "Maximum number of mismatches allowed for the mate 2 barcode; if not set, this value is equal to the '--barcode-mm' value; cannot be higher than the '--barcode-mm value'."
    demultiplex_only: "Only carry out demultiplexing using the list of barcodes supplied with --barcode-list. No other processing is done."
  }
}