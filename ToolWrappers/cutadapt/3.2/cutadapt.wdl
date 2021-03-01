version 1.0

task Cutadapt {
  input {
    Boolean? debug
    Int? cores
    Int? adapter
    Int? front
    Int? anywhere
    Int? error_rate
    Boolean? no_indels
    Int? times
    Int? overlap
    Boolean? match_read_wildcards
    Boolean? no_match_adapter_wildcards
    String? action
    Boolean? rev_comp
    Int? cut
    Int? next_seq_trim
    Boolean? cutofftrim_lowquality_bases
    Int? quality_base
    Int? length
    Boolean? trim_n
    Int? length_tag
    String? strip_suffix
    String? prefix
    String? suffix
    String? rename
    Boolean? zero_cap
    Int? discard_reads_shorter
    Int? discard_reads_longer
    Int? max_n
    Int? max_expected_errors
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
    Int? a
    Int? g
    Int? b
    Int? remove_length_bases
    File? paired_output
    Boolean? pair_adapters
    Boolean? pair_filter
    Boolean? interleaved
    File? untrimmed_paired_output
    File? too_short_paired_output
    File? too_long_paired_output
  }
  command <<<
    cutadapt \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(adapter) then ("--adapter " +  '"' + adapter + '"') else ""} \
      ~{if defined(front) then ("--front " +  '"' + front + '"') else ""} \
      ~{if defined(anywhere) then ("--anywhere " +  '"' + anywhere + '"') else ""} \
      ~{if defined(error_rate) then ("--error-rate " +  '"' + error_rate + '"') else ""} \
      ~{if (no_indels) then "--no-indels" else ""} \
      ~{if defined(times) then ("--times " +  '"' + times + '"') else ""} \
      ~{if defined(overlap) then ("--overlap " +  '"' + overlap + '"') else ""} \
      ~{if (match_read_wildcards) then "--match-read-wildcards" else ""} \
      ~{if (no_match_adapter_wildcards) then "--no-match-adapter-wildcards" else ""} \
      ~{if defined(action) then ("--action " +  '"' + action + '"') else ""} \
      ~{if (rev_comp) then "--revcomp" else ""} \
      ~{if defined(cut) then ("--cut " +  '"' + cut + '"') else ""} \
      ~{if defined(next_seq_trim) then ("--nextseq-trim " +  '"' + next_seq_trim + '"') else ""} \
      ~{if (cutofftrim_lowquality_bases) then "-q" else ""} \
      ~{if defined(quality_base) then ("--quality-base " +  '"' + quality_base + '"') else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""} \
      ~{if (trim_n) then "--trim-n" else ""} \
      ~{if defined(length_tag) then ("--length-tag " +  '"' + length_tag + '"') else ""} \
      ~{if defined(strip_suffix) then ("--strip-suffix " +  '"' + strip_suffix + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if defined(rename) then ("--rename " +  '"' + rename + '"') else ""} \
      ~{if (zero_cap) then "--zero-cap" else ""} \
      ~{if defined(discard_reads_shorter) then ("-m " +  '"' + discard_reads_shorter + '"') else ""} \
      ~{if defined(discard_reads_longer) then ("-M " +  '"' + discard_reads_longer + '"') else ""} \
      ~{if defined(max_n) then ("--max-n " +  '"' + max_n + '"') else ""} \
      ~{if defined(max_expected_errors) then ("--max-expected-errors " +  '"' + max_expected_errors + '"') else ""} \
      ~{if (discard_trimmed) then "--discard-trimmed" else ""} \
      ~{if (discard_untrimmed) then "--discard-untrimmed" else ""} \
      ~{if (discard_casa_va) then "--discard-casava" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(report) then ("--report " +  '"' + report + '"') else ""} \
      ~{if defined(write_trimmed_reads) then ("--output " +  '"' + write_trimmed_reads + '"') else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (use_compression_level) then "-Z" else ""} \
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
      ~{if (pair_adapters) then "--pair-adapters" else ""} \
      ~{if (pair_filter) then "--pair-filter" else ""} \
      ~{if (interleaved) then "--interleaved" else ""} \
      ~{if defined(untrimmed_paired_output) then ("--untrimmed-paired-output " +  '"' + untrimmed_paired_output + '"') else ""} \
      ~{if defined(too_short_paired_output) then ("--too-short-paired-output " +  '"' + too_short_paired_output + '"') else ""} \
      ~{if defined(too_long_paired_output) then ("--too-long-paired-output " +  '"' + too_long_paired_output + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cutadapt:3.2--py37hf01694f_0"
  }
  parameter_meta {
    debug: "Print debug log. Use twice to also print DP matrices"
    cores: "Number of CPU cores to use. Use 0 to auto-detect.\\nDefault: 1"
    adapter: "Sequence of an adapter ligated to the 3' end (paired\\ndata: of the first read). The adapter and subsequent\\nbases are trimmed. If a '$' character is appended\\n('anchoring'), the adapter is only found if it is a\\nsuffix of the read."
    front: "Sequence of an adapter ligated to the 5' end (paired\\ndata: of the first read). The adapter and any preceding\\nbases are trimmed. Partial matches at the 5' end are\\nallowed. If a '^' character is prepended ('anchoring'),\\nthe adapter is only found if it is a prefix of the read."
    anywhere: "Sequence of an adapter that may be ligated to the 5' or\\n3' end (paired data: of the first read). Both types of\\nmatches as described under -a and -g are allowed. If the\\nfirst base of the read is part of the match, the\\nbehavior is as with -g, otherwise as with -a. This\\noption is mostly for rescuing failed library\\npreparations - do not use if you know which end your\\nadapter was ligated to!"
    error_rate: "Maximum allowed error rate (if 0 <= E < 1), or absolute\\nnumber of errors for full-length adapter match (if E is\\nan integer >= 1). Error rate = no. of errors divided by\\nlength of matching region. Default: 0.1 (10%)"
    no_indels: "Allow only mismatches in alignments. Default: allow both\\nmismatches and indels"
    times: "Remove up to COUNT adapters from each read. Default: 1"
    overlap: "Require MINLENGTH overlap between read and adapter for\\nan adapter to be found. Default: 3"
    match_read_wildcards: "Interpret IUPAC wildcards in reads. Default: False"
    no_match_adapter_wildcards: "Do not interpret IUPAC wildcards in adapters."
    action: "What to do if a match was found. trim: trim adapter and\\nup- or downstream sequence; retain: trim, but retain\\nadapter; mask: replace with 'N' characters; lowercase:\\nconvert to lowercase; none: leave unchanged. Default:\\ntrim"
    rev_comp: "Check both the read and its reverse complement for\\nadapter matches. If match is on reverse-complemented\\nversion, output that one. Default: check only read"
    cut: "Remove bases from each read (first read only if paired).\\nIf LENGTH is positive, remove bases from the beginning.\\nIf LENGTH is negative, remove bases from the end. Can be\\nused twice if LENGTHs have different signs. This is\\napplied *before* adapter trimming."
    next_seq_trim: "'CUTOFF\\nNextSeq-specific quality trimming (each read). Trims\\nalso dark cycles appearing as high-quality G bases."
    cutofftrim_lowquality_bases: "[5'CUTOFF,]3'CUTOFF, --quality-cutoff [5'CUTOFF,]3'CUTOFF\\nTrim low-quality bases from 5' and/or 3' ends of each\\nread before adapter removal. Applied to both reads if\\ndata is paired. If one value is given, only the 3' end\\nis trimmed. If two comma-separated cutoffs are given,\\nthe 5' end is trimmed with the first cutoff, the 3' end\\nwith the second."
    quality_base: "Assume that quality values in FASTQ are encoded as\\nascii(quality + N). This needs to be set to 64 for some\\nold Illumina FASTQ files. Default: 33"
    length: "Shorten reads to LENGTH. Positive values remove bases at\\nthe end while negative ones remove bases at the\\nbeginning. This and the following modifications are\\napplied after adapter trimming."
    trim_n: "Trim N's on ends of reads."
    length_tag: "Search for TAG followed by a decimal number in the\\ndescription field of the read. Replace the decimal\\nnumber with the correct length of the trimmed read. For\\nexample, use --length-tag 'length=' to correct fields\\nlike 'length=123'."
    strip_suffix: "Remove this suffix from read names if present. Can be\\ngiven multiple times."
    prefix: "Add this prefix to read names. Use {name} to insert the\\nname of the matching adapter."
    suffix: "Add this suffix to read names; can also include {name}"
    rename: "Rename reads using TEMPLATE containing variables such as\\n{id}, {adapter_name} etc. (see documentation)"
    zero_cap: "Change negative quality values to zero."
    discard_reads_shorter: "[:LEN2], --minimum-length LEN[:LEN2]\\nDiscard reads shorter than LEN. Default: 0"
    discard_reads_longer: "[:LEN2], --maximum-length LEN[:LEN2]\\nDiscard reads longer than LEN. Default: no limit"
    max_n: "Discard reads with more than COUNT 'N' bases. If COUNT\\nis a number between 0 and 1, it is interpreted as a\\nfraction of the read length."
    max_expected_errors: "Discard reads whose expected number of errors (computed\\nfrom quality values) exceeds ERRORS."
    discard_trimmed: "Discard reads that contain an adapter. Use also -O to\\navoid discarding too many randomly matching reads."
    discard_untrimmed: "Discard reads that do not contain an adapter."
    discard_casa_va: "Discard reads that did not pass CASAVA filtering (header\\nhas :Y:)."
    quiet: "Print only error messages."
    report: "Which type of report to print: 'full' or 'minimal'.\\nDefault: full"
    write_trimmed_reads: "Write trimmed reads to FILE. FASTQ or FASTA format is\\nchosen depending on input. Summary report is sent to\\nstandard output. Use '{name}' for demultiplexing (see\\ndocs). Default: write to standard output"
    fast_a: "Output FASTA to standard output even on FASTQ input."
    use_compression_level: "Use compression level 1 for gzipped output files\\n(faster, but uses more space)"
    info_file: "Write information about each read and its adapter\\nmatches into FILE. See the documentation for the file\\nformat."
    rest_file: "When the adapter matches in the middle of a read, write\\nthe rest (after the adapter) to FILE."
    wildcard_file: "When the adapter has N wildcard bases, write adapter\\nbases matching wildcard positions to FILE. (Inaccurate\\nwith indels.)"
    too_short_output: "Write reads that are too short (according to length\\nspecified by -m) to FILE. Default: discard reads"
    too_long_output: "Write reads that are too long (according to length\\nspecified by -M) to FILE. Default: discard reads"
    untrimmed_output: "Write reads that do not contain any adapter to FILE.\\nDefault: output to same file as trimmed reads"
    a: "3' adapter to be removed from second read in a pair."
    g: "5' adapter to be removed from second read in a pair."
    b: "5'/3 adapter to be removed from second read in a pair."
    remove_length_bases: "Remove LENGTH bases from second read in a pair."
    paired_output: "Write second read in a pair to FILE."
    pair_adapters: "Treat adapters given with -a/-A etc. as pairs. Either\\nboth or none are removed from each read pair."
    pair_filter: "(any|both|first)\\nWhich of the reads in a paired-end read have to match\\nthe filtering criterion in order for the pair to be\\nfiltered. Default: any"
    interleaved: "Read and/or write interleaved paired-end reads."
    untrimmed_paired_output: "Write second read in a pair to this FILE when no adapter\\nwas found. Use with --untrimmed-output. Default: output\\nto same file as trimmed reads"
    too_short_paired_output: "Write second read in a pair to this file if pair is too\\nshort."
    too_long_paired_output: "Write second read in a pair to this file if pair is too\\nlong.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_untrimmed_output = "${in_untrimmed_output}"
    File out_untrimmed_paired_output = "${in_untrimmed_paired_output}"
  }
}