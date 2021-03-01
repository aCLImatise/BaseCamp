version 1.0

task AdapterRemoval {
  input {
    Array[File] file_one
    Boolean? file_two
    Boolean? identify_adapters
    Int? threads
    Int? quality_base
    Int? quality_base_output
    Int? quality_max
    Int? mate_separator
    Boolean? interleaved
    Boolean? interleaved_input
    Boolean? interleaved_output
    File? combined_output
    File? basename
    File? settings
    File? output_one
    File? output_two
    File? singleton
    File? output_collapsed
    File? output_collapsed_truncated
    File? discarded
    Boolean? gzip
    Int? gzip_level
    Boolean? bzip_two
    Int? bzip_two_level
    Int? adapter_one
    Int? adapter_two
    File? adapter_list
    Int? min_adapter_overlap
    Int? mm
    Int? shift
    Int? trim_five_p
    Int? trim_three_p
    Boolean? trim_ns
    Int? max_ns
    Boolean? trim_qualities
    Int? trim_windows
    Int? min_quality
    Boolean? preserve_five_p
    Int? minlength
    Int? maxlength
    Boolean? collapse
    Boolean? collapse_deterministic
    Int? min_alignment_length
    String? seed
    File? barcode_list
    Int? barcode_mm
    Int? barcode_mm_r_one
    Int? barcode_mm_r_two
    Boolean? demultiplex_only
    Int eight_eight_dot
  }
  command <<<
    AdapterRemoval \
      ~{eight_eight_dot} \
      ~{if defined(file_one) then ("--file1 " +  '"' + file_one + '"') else ""} \
      ~{if (file_two) then "--file2" else ""} \
      ~{if (identify_adapters) then "--identify-adapters" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(quality_base) then ("--qualitybase " +  '"' + quality_base + '"') else ""} \
      ~{if defined(quality_base_output) then ("--qualitybase-output " +  '"' + quality_base_output + '"') else ""} \
      ~{if defined(quality_max) then ("--qualitymax " +  '"' + quality_max + '"') else ""} \
      ~{if defined(mate_separator) then ("--mate-separator " +  '"' + mate_separator + '"') else ""} \
      ~{if (interleaved) then "--interleaved" else ""} \
      ~{if (interleaved_input) then "--interleaved-input" else ""} \
      ~{if (interleaved_output) then "--interleaved-output" else ""} \
      ~{if (combined_output) then "--combined-output" else ""} \
      ~{if defined(basename) then ("--basename " +  '"' + basename + '"') else ""} \
      ~{if defined(settings) then ("--settings " +  '"' + settings + '"') else ""} \
      ~{if defined(output_one) then ("--output1 " +  '"' + output_one + '"') else ""} \
      ~{if defined(output_two) then ("--output2 " +  '"' + output_two + '"') else ""} \
      ~{if defined(singleton) then ("--singleton " +  '"' + singleton + '"') else ""} \
      ~{if defined(output_collapsed) then ("--outputcollapsed " +  '"' + output_collapsed + '"') else ""} \
      ~{if defined(output_collapsed_truncated) then ("--outputcollapsedtruncated " +  '"' + output_collapsed_truncated + '"') else ""} \
      ~{if defined(discarded) then ("--discarded " +  '"' + discarded + '"') else ""} \
      ~{if (gzip) then "--gzip" else ""} \
      ~{if defined(gzip_level) then ("--gzip-level " +  '"' + gzip_level + '"') else ""} \
      ~{if (bzip_two) then "--bzip2" else ""} \
      ~{if defined(bzip_two_level) then ("--bzip2-level " +  '"' + bzip_two_level + '"') else ""} \
      ~{if defined(adapter_one) then ("--adapter1 " +  '"' + adapter_one + '"') else ""} \
      ~{if defined(adapter_two) then ("--adapter2 " +  '"' + adapter_two + '"') else ""} \
      ~{if defined(adapter_list) then ("--adapter-list " +  '"' + adapter_list + '"') else ""} \
      ~{if defined(min_adapter_overlap) then ("--minadapteroverlap " +  '"' + min_adapter_overlap + '"') else ""} \
      ~{if defined(mm) then ("--mm " +  '"' + mm + '"') else ""} \
      ~{if defined(shift) then ("--shift " +  '"' + shift + '"') else ""} \
      ~{if defined(trim_five_p) then ("--trim5p " +  '"' + trim_five_p + '"') else ""} \
      ~{if defined(trim_three_p) then ("--trim3p " +  '"' + trim_three_p + '"') else ""} \
      ~{if (trim_ns) then "--trimns" else ""} \
      ~{if defined(max_ns) then ("--maxns " +  '"' + max_ns + '"') else ""} \
      ~{if (trim_qualities) then "--trimqualities" else ""} \
      ~{if defined(trim_windows) then ("--trimwindows " +  '"' + trim_windows + '"') else ""} \
      ~{if defined(min_quality) then ("--minquality " +  '"' + min_quality + '"') else ""} \
      ~{if (preserve_five_p) then "--preserve5p" else ""} \
      ~{if defined(minlength) then ("--minlength " +  '"' + minlength + '"') else ""} \
      ~{if defined(maxlength) then ("--maxlength " +  '"' + maxlength + '"') else ""} \
      ~{if (collapse) then "--collapse" else ""} \
      ~{if (collapse_deterministic) then "--collapse-deterministic" else ""} \
      ~{if defined(min_alignment_length) then ("--minalignmentlength " +  '"' + min_alignment_length + '"') else ""} \
      ~{if defined(seed) then ("--seed " +  '"' + seed + '"') else ""} \
      ~{if defined(barcode_list) then ("--barcode-list " +  '"' + barcode_list + '"') else ""} \
      ~{if defined(barcode_mm) then ("--barcode-mm " +  '"' + barcode_mm + '"') else ""} \
      ~{if defined(barcode_mm_r_one) then ("--barcode-mm-r1 " +  '"' + barcode_mm_r_one + '"') else ""} \
      ~{if defined(barcode_mm_r_two) then ("--barcode-mm-r2 " +  '"' + barcode_mm_r_two + '"') else ""} \
      ~{if (demultiplex_only) then "--demultiplex-only" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    file_one: "Input files containing mate 1 reads or single-ended reads; one or\\nmore files may be listed [REQUIRED]."
    file_two: "[FILE ...]\\nInput files containing mate 2 reads; if used, then the same number of\\nfiles as --file1 must be listed [OPTIONAL]."
    identify_adapters: "Attempt to identify the adapter pair of PE reads, by searching for\\noverlapping mate reads [default: off]."
    threads: "Maximum number of threads [default: 1]"
    quality_base: "Quality base used to encode Phred scores in input; either 33, 64, or\\nsolexa [default: 33]."
    quality_base_output: "Quality base used to encode Phred scores in output; either 33, 64, or\\nsolexa. By default, reads will be written in the same format as the\\nthat specified using --qualitybase."
    quality_max: "Specifies the maximum Phred score expected in input files, and used\\nwhen writing output. ASCII encoded values are limited to the\\ncharacters '!' (ASCII = 33) to '~' (ASCII = 126), meaning that\\npossible scores are 0 - 93 with offset 33, and 0 - 62 for offset 64\\nand Solexa scores [default: 41]."
    mate_separator: "Character separating the mate number (1 or 2) from the read name in\\nFASTQ records [default: '/']."
    interleaved: "This option enables both the --interleaved-input option and the\\n--interleaved-output option [default: off]."
    interleaved_input: "The (single) input file provided contains both the mate 1 and mate 2\\nreads, one pair after the other, with one mate 1 reads followed by\\none mate 2 read. This option is implied by the --interleaved option\\n[default: off]."
    interleaved_output: "If set, trimmed paired-end reads are written to a single file\\ncontaining mate 1 and mate 2 reads, one pair after the other. This\\noption is implied by the --interleaved option [default: off]."
    combined_output: "If set, all reads are written to the same file(s), specified by\\n--output1 and --output2 (--output1 only if --interleaved-output is\\nnot set). Discarded reads are replaced with a single 'N' with Phred\\nscore 0 [default: off]."
    basename: "Default prefix for all output files for which no filename was\\nexplicitly set [default: your_output]."
    settings: "Output file containing information on the parameters used in the run\\nas well as overall statistics on the reads after trimming [default:\\nBASENAME.settings]"
    output_one: "Output file containing trimmed mate1 reads [default:\\nBASENAME.pair1.truncated (PE), BASENAME.truncated (SE), or\\nBASENAME.paired.truncated (interleaved PE)]"
    output_two: "Output file containing trimmed mate 2 reads [default:\\nBASENAME.pair2.truncated (only used in PE mode, but not if\\n--interleaved-output is enabled)]"
    singleton: "Output file to which containing paired reads for which the mate has\\nbeen discarded [default: BASENAME.singleton.truncated]"
    output_collapsed: "If --collapsed is set, contains overlapping mate-pairs which have\\nbeen merged into a single read (PE mode) or reads for which the\\nadapter was identified by a minimum overlap, indicating that the\\nentire template molecule is present. This does not include which have\\nsubsequently been trimmed due to low-quality or ambiguous nucleotides\\n[default: BASENAME.collapsed]"
    output_collapsed_truncated: "Collapsed reads (see --outputcollapsed) which were trimmed due the\\npresence of low-quality or ambiguous nucleotides [default:\\nBASENAME.collapsed.truncated]"
    discarded: "Contains reads discarded due to the --minlength, --maxlength or\\n--maxns options [default: BASENAME.discarded]"
    gzip: "Enable gzip compression [default: off]"
    gzip_level: "Compression level, 0 - 9 [default: 6]"
    bzip_two: "Enable bzip2 compression [default: off]"
    bzip_two_level: "Compression level, 0 - 9 [default: 9]"
    adapter_one: "Adapter sequence expected to be found in mate 1 reads [default:\\nAGATCGGAAGAGCACACGTCTGAACTCCAGTCACNNNNNNATCTCGTATGCCGTCTTCTGCTTG]."
    adapter_two: "Adapter sequence expected to be found in mate 2 reads [default:\\nAGATCGGAAGAGCGTCGTGTAGGGAAAGAGTGTAGATCTCGGTGGTCGCCGTATCATT]."
    adapter_list: "Read table of white-space separated adapters pairs, used as if the\\nfirst column was supplied to --adapter1, and the second column was\\nsupplied to --adapter2; only the first adapter in each pair is\\nrequired SE trimming mode [default: <not set>]."
    min_adapter_overlap: "In single-end mode, reads are only trimmed if the overlap between\\nread and the adapter is at least X bases long, not counting ambiguous\\nnucleotides (N); this is independent of the --minalignmentlength when\\nusing --collapse, allowing a conservative selection of putative\\ncomplete inserts while ensuring that all possible adapter\\ncontamination is trimmed [default: 0]."
    mm: "Max error-rate when aligning reads and/or adapters. If > 1, the max\\nerror-rate is set to 1 / MISMATCH_RATE; if < 0, the defaults are\\nused, otherwise the user-supplied value is used directly [default:\\n1/3 for trimming; 1/10 when identifying adapters]."
    shift: "Consider alignments where up to N nucleotides are missing from the 5'\\ntermini [default: 2]."
    trim_five_p: "[N]\\nTrim the 5' of reads by a fixed amount after removing adapters, but\\nbefore carrying out quality based trimming. Specify one value to trim\\nmate 1 and mate 2 reads the same amount, or two values separated by a\\nspace to trim each mate different amounts [default: no trimming]."
    trim_three_p: "[N]\\nTrim the 3' of reads by a fixed amount. See --trim5p."
    trim_ns: "If set, trim ambiguous bases (N) at 5'/3' termini [default: off]"
    max_ns: "Reads containing more ambiguous bases (N) than this number after\\ntrimming are discarded [default: 1000]."
    trim_qualities: "If set, trim bases at 5'/3' termini with quality scores <= to\\n--minquality value [default: off]"
    trim_windows: "If set, quality trimming will be carried out using window based\\napproach, where windows with an average quality less than\\n--minquality will be trimmed. If >= 1, this value will be used as the\\nwindow size. If the value is < 1, the value will be multiplied with\\nthe read length to determine a window size per read. If the resulting\\nwindow size is 0 or larger than the read length, the read length is\\nused as the window size. This option implies --trimqualities\\n[default: <not set>]."
    min_quality: "Inclusive minimum; see --trimqualities for details [default: 2]"
    preserve_five_p: "If set, bases at the 5p will not be trimmed by --trimns,\\n--trimqualities, and --trimwindows. Collapsed reads will not be\\nquality trimmed when this option is enabled [default: 5p bases are\\ntrimmed]"
    minlength: "Reads shorter than this length are discarded following trimming\\n[default: 15]."
    maxlength: "Reads longer than this length are discarded following trimming\\n[default: 4294967295]."
    collapse: "When set, paired ended read alignments of --minalignmentlength or\\nmore bases are combined into a single consensus sequence,\\nrepresenting the complete insert, and written to either\\nbasename.collapsed or basename.collapsed.truncated (if trimmed due to\\nlow-quality bases following collapse); for single-ended reads,\\nputative complete inserts are identified as having at least\\n--minalignmentlength bases overlap with the adapter sequence, and are\\nwritten to the the same files [default: off]."
    collapse_deterministic: "In standard --collapse mode, AdapterRemoval will randomly select one\\nof two different overlapping bases if these have the same quality\\n(otherwise it picks the highest quality base). With\\n--collapse-deterministic, AdapterRemoval will instead set such bases\\nto N. This option implies --collapse [default: off]."
    min_alignment_length: "If --collapse is set, paired reads must overlap at least this number\\nof bases to be collapsed, and single-ended reads must overlap at\\nleast this number of bases with the adapter to be considered complete\\ntemplate molecules [default: 11]."
    seed: "Sets the RNG seed used when choosing between bases with equal Phred\\nscores when --collapse is enabled. This option is not available if\\nmore than one thread is used. If not specified, aseed is generated\\nusing the current time."
    barcode_list: "List of barcodes or barcode pairs for single or double-indexed\\ndemultiplexing. Note that both indexes should be specified for both\\nsingle-end and paired-end trimming, if double-indexed multiplexing\\nwas used, in order to ensure that the demultiplexed reads can be\\ntrimmed correctly [default: <not set>]."
    barcode_mm: "Maximum number of mismatches allowed when counting mismatches in both\\nthe mate 1 and the mate 2 barcode for paired reads."
    barcode_mm_r_one: "Maximum number of mismatches allowed for the mate 1 barcode; if not\\nset, this value is equal to the '--barcode-mm' value; cannot be\\nhigher than the '--barcode-mm value'."
    barcode_mm_r_two: "Maximum number of mismatches allowed for the mate 2 barcode; if not\\nset, this value is equal to the '--barcode-mm' value; cannot be\\nhigher than the '--barcode-mm value'."
    demultiplex_only: "Only carry out demultiplexing using the list of barcodes supplied\\nwith --barcode-list. No other processing is done.\\n"
    eight_eight_dot: "http://bmcresnotes.biomedcentral.com/articles/10.1186/s13104-016-1900-2"
  }
  output {
    File out_stdout = stdout()
    File out_combined_output = "${in_combined_output}"
    File out_basename = "${in_basename}"
    File out_settings = "${in_settings}"
    File out_output_one = "${in_output_one}"
    File out_output_two = "${in_output_two}"
    File out_singleton = "${in_singleton}"
  }
}