version 1.0

task AbyssBloom {
  input {
    String? km_er
    Boolean? verbose
    String? bloom_size
    String? buffer_size
    String? threads
    String? hash_seed
    String? num_hashes
    String? levels
    Boolean? in_it_level
    Boolean? chastity
    Boolean? no_chastity
    Boolean? trim_masked
    Boolean? no_trim_masked
    String? num_locks
    String? trim_quality
    String? bloom_type
    Boolean? standard_quality
    Boolean? illumina_quality
    String? window
    Boolean? method
    String? depth
    String? root
    File? root_fast_a
    String? fast_a_attr
    String? node_attr
    String? bloom_attr
    Boolean? inverse
    Boolean? bed
    Boolean? fast_a
    Boolean? raw
  }
  command <<<
    abyss-bloom \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(bloom_size) then ("--bloom-size " +  '"' + bloom_size + '"') else ""} \
      ~{if defined(buffer_size) then ("--buffer-size " +  '"' + buffer_size + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(hash_seed) then ("--hash-seed " +  '"' + hash_seed + '"') else ""} \
      ~{if defined(num_hashes) then ("--num-hashes " +  '"' + num_hashes + '"') else ""} \
      ~{if defined(levels) then ("--levels " +  '"' + levels + '"') else ""} \
      ~{true="--init-level" false="" in_it_level} \
      ~{true="--chastity" false="" chastity} \
      ~{true="--no-chastity" false="" no_chastity} \
      ~{true="--trim-masked" false="" trim_masked} \
      ~{true="--no-trim-masked" false="" no_trim_masked} \
      ~{if defined(num_locks) then ("--num-locks " +  '"' + num_locks + '"') else ""} \
      ~{if defined(trim_quality) then ("--trim-quality " +  '"' + trim_quality + '"') else ""} \
      ~{if defined(bloom_type) then ("--bloom-type " +  '"' + bloom_type + '"') else ""} \
      ~{true="--standard-quality" false="" standard_quality} \
      ~{true="--illumina-quality" false="" illumina_quality} \
      ~{if defined(window) then ("--window " +  '"' + window + '"') else ""} \
      ~{true="--method" false="" method} \
      ~{if defined(depth) then ("--depth " +  '"' + depth + '"') else ""} \
      ~{if defined(root) then ("--root " +  '"' + root + '"') else ""} \
      ~{if defined(root_fast_a) then ("--root-fasta " +  '"' + root_fast_a + '"') else ""} \
      ~{if defined(fast_a_attr) then ("--fasta-attr " +  '"' + fast_a_attr + '"') else ""} \
      ~{if defined(node_attr) then ("--node-attr " +  '"' + node_attr + '"') else ""} \
      ~{if defined(bloom_attr) then ("--bloom-attr " +  '"' + bloom_attr + '"') else ""} \
      ~{true="--inverse" false="" inverse} \
      ~{true="--bed" false="" bed} \
      ~{true="--fasta" false="" fast_a} \
      ~{true="--raw" false="" raw}
  >>>
  parameter_meta {
    km_er: "the size of a k-mer [<=128]"
    verbose: "display verbose output"
    bloom_size: "size of bloom filter [500M]"
    buffer_size: "size of I/O buffer for each thread, in bytes [100000]"
    threads: "use N parallel threads [1]"
    hash_seed: "seed for hash function (only works with `-t konnector') [0]"
    num_hashes: "number of hash functions (only works with `-t rolling-hash') [1]"
    levels: "build a cascading bloom filter with N levels and output the last level"
    in_it_level: "='N=FILE'  initialize level N of cascading bloom filter from FILE"
    chastity: "discard unchaste reads [default]"
    no_chastity: "do not discard unchaste reads"
    trim_masked: "trim masked bases from the ends of reads"
    no_trim_masked: "do not trim masked bases from the ends of reads [default]"
    num_locks: "number of write locks on bloom filter [1000]"
    trim_quality: "trim bases from the ends of reads whose quality is less than the threshold"
    bloom_type: "'konnector', 'rolling-hash', or 'counting' [konnector]"
    standard_quality: "zero quality is `!' (33) default for FASTQ and SAM files"
    illumina_quality: "zero quality is `@' (64) default for qseq and export files"
    window: "build a bloom filter for subwindow M of N"
    method: "=`String'      choose distance calculation method  [`jaccard'(default), `forbes', `czekanowski']"
    depth: "depth of neighbouring from --root [k]"
    root: "root k-mer from graph traversal [required]"
    root_fast_a: "get root k-mers from FASTA file"
    fast_a_attr: ":FILE, assign a node attribute (e.g. 'color=blue')"
    node_attr: ":FILE   to k-mers in the given FASTA"
    bloom_attr: ":FILE  assign a node attribute (e.g. 'color=blue') to k-mers in the given Bloom filter"
    inverse: "get k-mers that are *NOT* in the bloom filter"
    bed: "output k-mers in BED format"
    fast_a: "output k-mers in FASTA format [default]"
    raw: "output k-mers in raw format (one per line)"
  }
}