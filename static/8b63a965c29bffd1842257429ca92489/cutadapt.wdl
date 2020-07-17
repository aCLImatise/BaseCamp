version 1.0

task Cutadapt {
  input {
    Boolean? debug
    String? cores
    String? adapter
    String? front
    String? anywhere
    String? error_rate
    Boolean? no_indels
    String? times
    Int? overlap
    Boolean? match_read_wildcards
    Boolean? no_match_adapter_wildcards
    String? action
    Boolean? rev_comp
    Int? cut
    String? next_seq_trim
    Boolean? _end_second
    String? quality_base
    Int? length
    Boolean? trim_n
    String? length_tag
    String? strip_suffix
    String? prefix
    String? suffix
    Boolean? zero_cap
    String? discard_reads_shorter
    String? discard_reads_longer
    String? max_n
    String? max_expected_errors
    Boolean? discard_trimmed
    Boolean? discard_untrimmed
    Boolean? discard_casa_va
    Boolean? quiet
    String? report
    File? write_trimmed_reads
    Boolean? fast_a
    Boolean? use_compression_level
    File? info_file
    File? rest_file
    File? wildcard_file
    File? too_short_output
    File? too_long_output
    File? untrimmed_output
    String? a
    String? g
    String? b
    Int? remove_length_bases
    File? paired_output
    Boolean? pair_adapters
    Boolean? pair_filter
    Boolean? interleaved
    File? untrimmed_paired_output
    File? too_short_paired_output
    File? too_long_paired_output
    String input_dot_fast_q
  }
  command <<<
    cutadapt \
      ~{input_dot_fast_q} \
      ~{true="--debug" false="" debug} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(adapter) then ("--adapter " +  '"' + adapter + '"') else ""} \
      ~{if defined(front) then ("--front " +  '"' + front + '"') else ""} \
      ~{if defined(anywhere) then ("--anywhere " +  '"' + anywhere + '"') else ""} \
      ~{if defined(error_rate) then ("--error-rate " +  '"' + error_rate + '"') else ""} \
      ~{true="--no-indels" false="" no_indels} \
      ~{if defined(times) then ("--times " +  '"' + times + '"') else ""} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""} \
      ~{true="--match-read-wildcards" false="" match_read_wildcards} \
      ~{true="--no-match-adapter-wildcards" false="" no_match_adapter_wildcards} \
      ~{if defined(action) then ("--action " +  '"' + action + '"') else ""} \
      ~{true="--revcomp" false="" rev_comp} \
      ~{if defined(cut) then ("--cut " +  '"' + cut + '"') else ""} \
      ~{if defined(next_seq_trim) then ("--nextseq-trim " +  '"' + next_seq_trim + '"') else ""} \
      ~{true="-q" false="" _end_second} \
      ~{if defined(quality_base) then ("--quality-base " +  '"' + quality_base + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{true="--trim-n" false="" trim_n} \
      ~{if defined(length_tag) then ("--length-tag " +  '"' + length_tag + '"') else ""} \
      ~{if defined(strip_suffix) then ("--strip-suffix " +  '"' + strip_suffix + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{true="--zero-cap" false="" zero_cap} \
      ~{if defined(discard_reads_shorter) then ("-m " +  '"' + discard_reads_shorter + '"') else ""} \
      ~{if defined(discard_reads_longer) then ("-M " +  '"' + discard_reads_longer + '"') else ""} \
      ~{if defined(max_n) then ("--max-n " +  '"' + max_n + '"') else ""} \
      ~{if defined(max_expected_errors) then ("--max-expected-errors " +  '"' + max_expected_errors + '"') else ""} \
      ~{true="--discard-trimmed" false="" discard_trimmed} \
      ~{true="--discard-untrimmed" false="" discard_untrimmed} \
      ~{true="--discard-casava" false="" discard_casa_va} \
      ~{true="--quiet" false="" quiet} \
      ~{if defined(report) then ("--report " +  '"' + report + '"') else ""} \
      ~{if defined(write_trimmed_reads) then ("--output " +  '"' + write_trimmed_reads + '"') else ""} \
      ~{true="--fasta" false="" fast_a} \
      ~{true="-Z" false="" use_compression_level} \
      ~{if defined(info_file) then ("--info-file " +  '"' + info_file + '"') else ""} \
      ~{if defined(rest_file) then ("--rest-file " +  '"' + rest_file + '"') else ""} \
      ~{if defined(wildcard_file) then ("--wildcard-file " +  '"' + wildcard_file + '"') else ""} \
      ~{if defined(too_short_output) then ("--too-short-output " +  '"' + too_short_output + '"') else ""} \
      ~{if defined(too_long_output) then ("--too-long-output " +  '"' + too_long_output + '"') else ""} \
      ~{if defined(untrimmed_output) then ("--untrimmed-output " +  '"' + untrimmed_output + '"') else ""} \
      ~{if defined(a) then ("-A " +  '"' + a + '"') else ""} \
      ~{if defined(g) then ("-G " +  '"' + g + '"') else ""} \
      ~{if defined(b) then ("-B " +  '"' + b + '"') else ""} \
      ~{if defined(remove_length_bases) then ("-U " +  '"' + remove_length_bases + '"') else ""} \
      ~{if defined(paired_output) then ("--paired-output " +  '"' + paired_output + '"') else ""} \
      ~{true="--pair-adapters" false="" pair_adapters} \
      ~{true="--pair-filter" false="" pair_filter} \
      ~{true="--interleaved" false="" interleaved} \
      ~{if defined(untrimmed_paired_output) then ("--untrimmed-paired-output " +  '"' + untrimmed_paired_output + '"') else ""} \
      ~{if defined(too_short_paired_output) then ("--too-short-paired-output " +  '"' + too_short_paired_output + '"') else ""} \
      ~{if defined(too_long_paired_output) then ("--too-long-paired-output " +  '"' + too_long_paired_output + '"') else ""}
  >>>
  parameter_meta {
    debug: "[{trace}]     Print debug log. 'trace' prints also DP matrices"
    cores: "Number of CPU cores to use. Use 0 to auto-detect. Default: 1"
    adapter: "Sequence of an adapter ligated to the 3' end (paired data: of the first read). The adapter and subsequent bases are trimmed. If a '$' character is appended ('anchoring'), the adapter is only found if it is a suffix of the read."
    front: "Sequence of an adapter ligated to the 5' end (paired data: of the first read). The adapter and any preceding bases are trimmed. Partial matches at the 5' end are allowed. If a '^' character is prepended ('anchoring'), the adapter is only found if it is a prefix of the read."
    anywhere: "Sequence of an adapter that may be ligated to the 5' or 3' end (paired data: of the first read). Both types of matches as described under -a und -g are allowed. If the first base of the read is part of the match, the behavior is as with -g, otherwise as with -a. This option is mostly for rescuing failed library preparations - do not use if you know which end your adapter was ligated to!"
    error_rate: "Maximum allowed error rate as value between 0 and 1 (no. of errors divided by length of matching region). Default: 0.1 (=10%)"
    no_indels: "Allow only mismatches in alignments. Default: allow both mismatches and indels"
    times: "Remove up to COUNT adapters from each read. Default: 1"
    overlap: "Require MINLENGTH overlap between read and adapter for an adapter to be found. Default: 3"
    match_read_wildcards: "Interpret IUPAC wildcards in reads. Default: False"
    no_match_adapter_wildcards: "Do not interpret IUPAC wildcards in adapters."
    action: "What to do with found adapters. mask: replace with 'N' characters; lowercase: convert to lowercase; none: leave unchanged (useful with --discard-untrimmed). Default: trim"
    rev_comp: "Check both the read and its reverse complement for adapter matches. If match is on reverse-complemented version, output that one. Default: check only read"
    cut: "Remove bases from each read (first read only if paired). If LENGTH is positive, remove bases from the beginning. If LENGTH is negative, remove bases from the end. Can be used twice if LENGTHs have different signs. This is applied *before* adapter trimming."
    next_seq_trim: "'CUTOFF NextSeq-specific quality trimming (each read). Trims also dark cycles appearing as high-quality G bases."
    _end_second: "[5'CUTOFF,]3'CUTOFF, --quality-cutoff [5'CUTOFF,]3'CUTOFF Trim low-quality bases from 5' and/or 3' ends of each read before adapter removal. Applied to both reads if data is paired. If one value is given, only the 3' end is trimmed. If two comma-separated cutoffs are given, the 5' end is trimmed with the first cutoff, the 3' end with the second."
    quality_base: "Assume that quality values in FASTQ are encoded as ascii(quality + N). This needs to be set to 64 for some old Illumina FASTQ files. Default: 33"
    length: "Shorten reads to LENGTH. Positive values remove bases at the end while negative ones remove bases at the beginning. This and the following modifications are applied after adapter trimming."
    trim_n: "Trim N's on ends of reads."
    length_tag: "Search for TAG followed by a decimal number in the description field of the read. Replace the decimal number with the correct length of the trimmed read. For example, use --length-tag 'length=' to correct fields like 'length=123'."
    strip_suffix: "Remove this suffix from read names if present. Can be given multiple times."
    prefix: "Add this prefix to read names. Use {name} to insert the name of the matching adapter."
    suffix: "Add this suffix to read names; can also include {name}"
    zero_cap: "Change negative quality values to zero."
    discard_reads_shorter: "[:LEN2], --minimum-length LEN[:LEN2] Discard reads shorter than LEN. Default: 0"
    discard_reads_longer: "[:LEN2], --maximum-length LEN[:LEN2] Discard reads longer than LEN. Default: no limit"
    max_n: "Discard reads with more than COUNT 'N' bases. If COUNT is a number between 0 and 1, it is interpreted as a fraction of the read length."
    max_expected_errors: "Discard reads whose expected number of errors (computed from quality values) exceeds ERRORS."
    discard_trimmed: "Discard reads that contain an adapter. Use also -O to avoid discarding too many randomly matching reads."
    discard_untrimmed: "Discard reads that do not contain an adapter."
    discard_casa_va: "Discard reads that did not pass CASAVA filtering (header has :Y:)."
    quiet: "Print only error messages."
    report: "Which type of report to print: 'full' or 'minimal'. Default: full"
    write_trimmed_reads: "Write trimmed reads to FILE. FASTQ or FASTA format is chosen depending on input. Summary report is sent to standard output. Use '{name}' for demultiplexing (see docs). Default: write to standard output"
    fast_a: "Output FASTA to standard output even on FASTQ input."
    use_compression_level: "Use compression level 1 for gzipped output files (faster, but uses more space)"
    info_file: "Write information about each read and its adapter matches into FILE. See the documentation for the file format."
    rest_file: "When the adapter matches in the middle of a read, write the rest (after the adapter) to FILE."
    wildcard_file: "When the adapter has N wildcard bases, write adapter bases matching wildcard positions to FILE. (Inaccurate with indels.)"
    too_short_output: "Write reads that are too short (according to length specified by -m) to FILE. Default: discard reads"
    too_long_output: "Write reads that are too long (according to length specified by -M) to FILE. Default: discard reads"
    untrimmed_output: "Write reads that do not contain any adapter to FILE. Default: output to same file as trimmed reads"
    a: "3' adapter to be removed from second read in a pair."
    g: "5' adapter to be removed from second read in a pair."
    b: "5'/3 adapter to be removed from second read in a pair."
    remove_length_bases: "Remove LENGTH bases from second read in a pair."
    paired_output: "Write second read in a pair to FILE."
    pair_adapters: "Treat adapters given with -a/-A etc. as pairs. Either both or none are removed from each read pair."
    pair_filter: "(any|both|first) Which of the reads in a paired-end read have to match the filtering criterion in order for the pair to be filtered. Default: any"
    interleaved: "Read and/or write interleaved paired-end reads."
    untrimmed_paired_output: "Write second read in a pair to this FILE when no adapter was found. Use with --untrimmed-output. Default: output to same file as trimmed reads"
    too_short_paired_output: "Write second read in a pair to this file if pair is too short. Use also --too-short-output."
    too_long_paired_output: "Write second read in a pair to this file if pair is too long. Use also --too-long-output."
    input_dot_fast_q: ""
  }
}