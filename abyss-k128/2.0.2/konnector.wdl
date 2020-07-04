version 1.0

task Konnector {
  input {
    String? threads
    String? km_er
    String? bloom_size
    String? min_coverage
    String? max_branches
    File? dot_file
    String? dup_bloom_size
    Boolean? fix_errors
    Boolean? extend
    Boolean? fast_q
    String? min_frag
    String? max_frag
    File? input_bloom
    Boolean? interleaved
    Boolean? mask
    Boolean? no_mask
    Boolean? chastity
    Boolean? no_chastity
    Boolean? trim_masked
    Boolean? no_trim_masked
    String? read_mismatches
    String? max_mismatches
    Boolean? no_limits
    File? output_prefix
    Boolean? preserve_reads
    Boolean? alt_paths_mode
    String? max_paths
    String? trim_quality
    Boolean? standard_quality
    Boolean? illumina_quality
    Boolean? corrected_qual
    String? read_name
    String? search_mem
    File? trace_file
    Boolean? verbose
    String? read_identity
    String? path_identity
  }
  command <<<
    konnector \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(bloom_size) then ("--bloom-size " +  '"' + bloom_size + '"') else ""} \
      ~{if defined(min_coverage) then ("--min-coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(max_branches) then ("--max-branches " +  '"' + max_branches + '"') else ""} \
      ~{if defined(dot_file) then ("--dot-file " +  '"' + dot_file + '"') else ""} \
      ~{if defined(dup_bloom_size) then ("--dup-bloom-size " +  '"' + dup_bloom_size + '"') else ""} \
      ~{true="--fix-errors" false="" fix_errors} \
      ~{true="--extend" false="" extend} \
      ~{true="--fastq" false="" fast_q} \
      ~{if defined(min_frag) then ("--min-frag " +  '"' + min_frag + '"') else ""} \
      ~{if defined(max_frag) then ("--max-frag " +  '"' + max_frag + '"') else ""} \
      ~{if defined(input_bloom) then ("--input-bloom " +  '"' + input_bloom + '"') else ""} \
      ~{true="--interleaved" false="" interleaved} \
      ~{true="--mask" false="" mask} \
      ~{true="--no-mask" false="" no_mask} \
      ~{true="--chastity" false="" chastity} \
      ~{true="--no-chastity" false="" no_chastity} \
      ~{true="--trim-masked" false="" trim_masked} \
      ~{true="--no-trim-masked" false="" no_trim_masked} \
      ~{if defined(read_mismatches) then ("--read-mismatches " +  '"' + read_mismatches + '"') else ""} \
      ~{if defined(max_mismatches) then ("--max-mismatches " +  '"' + max_mismatches + '"') else ""} \
      ~{true="--no-limits" false="" no_limits} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{true="--preserve-reads" false="" preserve_reads} \
      ~{true="--alt-paths-mode" false="" alt_paths_mode} \
      ~{if defined(max_paths) then ("--max-paths " +  '"' + max_paths + '"') else ""} \
      ~{if defined(trim_quality) then ("--trim-quality " +  '"' + trim_quality + '"') else ""} \
      ~{true="--standard-quality" false="" standard_quality} \
      ~{true="--illumina-quality" false="" illumina_quality} \
      ~{true="--corrected-qual" false="" corrected_qual} \
      ~{if defined(read_name) then ("--read-name " +  '"' + read_name + '"') else ""} \
      ~{if defined(search_mem) then ("--search-mem " +  '"' + search_mem + '"') else ""} \
      ~{if defined(trace_file) then ("--trace-file " +  '"' + trace_file + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(read_identity) then ("--read-identity " +  '"' + read_identity + '"') else ""} \
      ~{if defined(path_identity) then ("--path-identity " +  '"' + path_identity + '"') else ""}
  >>>
  parameter_meta {
    threads: "use N parallel threads [1]"
    km_er: "the size of a k-mer"
    bloom_size: "size of bloom filter [500M]"
    min_coverage: "kmer coverage threshold for error correction [2]. This option specifies the number of levels in the cascading Bloom filter; it has no effect if the Bloom filter is loaded from an external file."
    max_branches: "max branches in de Bruijn graph traversal; use 'nolimit' for no limit [350]"
    dot_file: "write graph traversals to a DOT file"
    dup_bloom_size: "use an additional Bloom filter to avoid assembling the same region of the genome multiple times. This option is highly recommended when the -E (--extend) option and has no effect otherwise. As a rule of thumb, the Bloom filter size should be about twice the target genome size [disabled]"
    fix_errors: "find and fix single-base errors when reads have no kmers in bloom filter [disabled]"
    extend: "in addition to finding a connecting path, extend the reads outwards to the next dead end or branching point in the de Brujin graph. If the reads were not successfully connected, extend them inwards as well."
    fast_q: "output merged reads in FASTQ format (default is FASTA)"
    min_frag: "min fragment size in base pairs [0]"
    max_frag: "max fragment size in base pairs [1000]"
    input_bloom: "load bloom filter from FILE"
    interleaved: "input reads files are interleaved"
    mask: "mask new and changed bases as lower case"
    no_mask: "do not mask bases [default]"
    chastity: "discard unchaste reads [default]"
    no_chastity: "do not discard unchaste reads"
    trim_masked: "trim masked bases from the ends of reads"
    no_trim_masked: "do not trim masked bases from the ends of reads [default]"
    read_mismatches: "max mismatches between paths and reads; use 'nolimit' for no limit [nolimit]"
    max_mismatches: "max mismatches between all alternate paths; use 'nolimit' for no limit [2]"
    no_limits: "disable all limits; equivalent to '-B nolimit -m nolimit -M nolimit -P nolimit'"
    output_prefix: "prefix of output FASTA files [required]"
    preserve_reads: "don't correct any bases within the reads [disabled]"
    alt_paths_mode: "output a separate pseudoread for each alternate path connecting a read pair (default is to create a consensus sequence of all connecting paths)"
    max_paths: "merge at most N alternate paths; use 'nolimit' for no limit [2]"
    trim_quality: "trim bases from the ends of reads whose quality is less than the threshold"
    standard_quality: "zero quality is `!' (33), typically for FASTQ and SAM files [default]"
    illumina_quality: "zero quality is `@' (64), typically for qseq and export files"
    corrected_qual: "quality score for bases corrected or inserted by konnector; only relevant when --fastq is in effect [40]"
    read_name: "only process reads with names that contain STR"
    search_mem: "mem limit for graph searches; multiply by the number of threads (-j) to get the total mem used for graph traversal [500M]"
    trace_file: "write graph search stats to FILE"
    verbose: "display verbose output"
    read_identity: "min percent seq identity between consensus seq and reads [0]"
    path_identity: "min percent seq identity across alternate connecting paths [0]"
  }
}