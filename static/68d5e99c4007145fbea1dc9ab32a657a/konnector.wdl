version 1.0

task Konnector {
  input {
    Int? threads
    Int? km_er
    Int? bloom_size
    Int? min_coverage
    Int? max_cost
    File? dot_file
    Int? dup_bloom_size
    Boolean? fix_errors
    Boolean? extend
    Boolean? fast_q
    Int? min_frag
    Int? max_frag
    File? input_bloom
    Boolean? interleaved
    Boolean? mask
    Boolean? no_mask
    Boolean? chastity
    Boolean? no_chastity
    Boolean? trim_masked
    Boolean? no_trim_masked
    Int? read_mismatches
    Int? max_mismatches
    Boolean? no_limits
    File? output_prefix
    Boolean? preserve_reads
    File? alt_paths_mode
    Int? max_paths
    String? trim_quality
    Boolean? standard_quality
    Boolean? illumina_quality
    Boolean? corrected_qual
    String? read_name
    Int? search_mem
    File? trace_file
    Boolean? verbose
    Int? read_identity
    File? path_identity
    Int? max_branches
  }
  command <<<
    konnector \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(bloom_size) then ("--bloom-size " +  '"' + bloom_size + '"') else ""} \
      ~{if defined(min_coverage) then ("--min-coverage " +  '"' + min_coverage + '"') else ""} \
      ~{if defined(max_cost) then ("--max-cost " +  '"' + max_cost + '"') else ""} \
      ~{if defined(dot_file) then ("--dot-file " +  '"' + dot_file + '"') else ""} \
      ~{if defined(dup_bloom_size) then ("--dup-bloom-size " +  '"' + dup_bloom_size + '"') else ""} \
      ~{if (fix_errors) then "--fix-errors" else ""} \
      ~{if (extend) then "--extend" else ""} \
      ~{if (fast_q) then "--fastq" else ""} \
      ~{if defined(min_frag) then ("--min-frag " +  '"' + min_frag + '"') else ""} \
      ~{if defined(max_frag) then ("--max-frag " +  '"' + max_frag + '"') else ""} \
      ~{if defined(input_bloom) then ("--input-bloom " +  '"' + input_bloom + '"') else ""} \
      ~{if (interleaved) then "--interleaved" else ""} \
      ~{if (mask) then "--mask" else ""} \
      ~{if (no_mask) then "--no-mask" else ""} \
      ~{if (chastity) then "--chastity" else ""} \
      ~{if (no_chastity) then "--no-chastity" else ""} \
      ~{if (trim_masked) then "--trim-masked" else ""} \
      ~{if (no_trim_masked) then "--no-trim-masked" else ""} \
      ~{if defined(read_mismatches) then ("--read-mismatches " +  '"' + read_mismatches + '"') else ""} \
      ~{if defined(max_mismatches) then ("--max-mismatches " +  '"' + max_mismatches + '"') else ""} \
      ~{if (no_limits) then "--no-limits" else ""} \
      ~{if defined(output_prefix) then ("--output-prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if (preserve_reads) then "--preserve-reads" else ""} \
      ~{if (alt_paths_mode) then "--alt-paths-mode" else ""} \
      ~{if defined(max_paths) then ("--max-paths " +  '"' + max_paths + '"') else ""} \
      ~{if defined(trim_quality) then ("--trim-quality " +  '"' + trim_quality + '"') else ""} \
      ~{if (standard_quality) then "--standard-quality" else ""} \
      ~{if (illumina_quality) then "--illumina-quality" else ""} \
      ~{if (corrected_qual) then "--corrected-qual" else ""} \
      ~{if defined(read_name) then ("--read-name " +  '"' + read_name + '"') else ""} \
      ~{if defined(search_mem) then ("--search-mem " +  '"' + search_mem + '"') else ""} \
      ~{if defined(trace_file) then ("--trace-file " +  '"' + trace_file + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(read_identity) then ("--read-identity " +  '"' + read_identity + '"') else ""} \
      ~{if defined(path_identity) then ("--path-identity " +  '"' + path_identity + '"') else ""} \
      ~{if defined(max_branches) then ("--max-branches " +  '"' + max_branches + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/abyss:2.3.1--hd403d74_0"
  }
  parameter_meta {
    threads: "use N parallel threads [1]"
    km_er: "the size of a k-mer"
    bloom_size: "size of bloom filter [500M]"
    min_coverage: "kmer coverage threshold for error correction [2].\\nThis option specifies the number of levels in the\\ncascading Bloom filter; it has no effect if the Bloom\\nfilter is loaded from an external file."
    max_cost: "max edges to traverse during each graph search [25000]"
    dot_file: "write graph traversals to a DOT file"
    dup_bloom_size: "use an additional Bloom filter to avoid\\nassembling the same region of the genome\\nmultiple times. This option is highly\\nrecommended when the -E (--extend) option\\nand has no effect otherwise. As a rule of\\nthumb, the Bloom filter size should be\\nabout twice the target genome size [disabled]"
    fix_errors: "find and fix single-base errors when reads\\nhave no kmers in bloom filter [disabled]"
    extend: "in addition to finding a connecting path,\\nextend the reads outwards to the next\\ndead end or branching point in the de Brujin\\ngraph. If the reads were not successfully\\nconnected, extend them inwards as well."
    fast_q: "output merged reads in FASTQ format\\n(default is FASTA)"
    min_frag: "min fragment size in base pairs [0]"
    max_frag: "max fragment size in base pairs [1000]"
    input_bloom: "load bloom filter from FILE"
    interleaved: "input reads files are interleaved"
    mask: "mask new and changed bases as lower case"
    no_mask: "do not mask bases [default]"
    chastity: "discard unchaste reads [default]"
    no_chastity: "do not discard unchaste reads"
    trim_masked: "trim masked bases from the ends of reads"
    no_trim_masked: "do not trim masked bases from the ends\\nof reads [default]"
    read_mismatches: "max mismatches between paths and reads; use\\n'nolimit' for no limit [nolimit]"
    max_mismatches: "max mismatches between all alternate paths;\\nuse 'nolimit' for no limit [2]"
    no_limits: "disable all limits; equivalent to\\n'-B nolimit -m nolimit -M nolimit -P nolimit'"
    output_prefix: "prefix of output FASTA files [required]"
    preserve_reads: "don't correct any bases within the reads [disabled]"
    alt_paths_mode: "output a separate pseudoread for each alternate\\npath connecting a read pair (default is to create\\na consensus sequence of all connecting paths)"
    max_paths: "merge at most N alternate paths; use 'nolimit'\\nfor no limit [2]"
    trim_quality: "trim bases from the ends of reads whose\\nquality is less than the threshold"
    standard_quality: "zero quality is `!' (33), typically\\nfor FASTQ and SAM files [default]"
    illumina_quality: "zero quality is `@' (64), typically\\nfor qseq and export files"
    corrected_qual: "quality score for bases corrected or inserted\\nby konnector; only relevant when --fastq is\\nin effect [40]"
    read_name: "only process reads with names that contain STR"
    search_mem: "mem limit for graph searches; multiply by the\\nnumber of threads (-j) to get the total mem used\\nfor graph traversal [500M]"
    trace_file: "write graph search stats to FILE"
    verbose: "display verbose output"
    read_identity: "min percent seq identity between consensus seq\\nand reads [0]"
    path_identity: "min percent seq identity across alternate\\nconnecting paths [0]"
    max_branches: "max branches in de Bruijn graph traversal;\\nuse 'nolimit' for no limit [nolimit]"
  }
  output {
    File out_stdout = stdout()
    File out_alt_paths_mode = "${in_alt_paths_mode}"
  }
}