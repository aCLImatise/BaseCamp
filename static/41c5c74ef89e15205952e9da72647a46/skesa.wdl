version 1.0

task Skesa {
  input {
    Boolean? _print_version
    String? cores
    String? memory
    Boolean? hash_count
    String? estimated_km_ers
    Boolean? skip_bloom_filter
    String? fast_a
    String? fast_q
    Boolean? use_paired_ends
    String? contigs_out
    String? km_er
    String? min_count
    String? max_km_er_count
    String? vector_percent
    String? insert_size
    String? steps
    String? fraction
    String? max_snp_len
    String? min_contig
    Boolean? allow_snps
    Boolean? force_single_ends
    String? seeds
    String? all
    String? dbg_out
    String? hist
    String? connected_reads
  }
  command <<<
    skesa \
      ~{true="-v" false="" _print_version} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""} \
      ~{true="--hash_count" false="" hash_count} \
      ~{if defined(estimated_km_ers) then ("--estimated_kmers " +  '"' + estimated_km_ers + '"') else ""} \
      ~{true="--skip_bloom_filter" false="" skip_bloom_filter} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""} \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{true="--use_paired_ends" false="" use_paired_ends} \
      ~{if defined(contigs_out) then ("--contigs_out " +  '"' + contigs_out + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(min_count) then ("--min_count " +  '"' + min_count + '"') else ""} \
      ~{if defined(max_km_er_count) then ("--max_kmer_count " +  '"' + max_km_er_count + '"') else ""} \
      ~{if defined(vector_percent) then ("--vector_percent " +  '"' + vector_percent + '"') else ""} \
      ~{if defined(insert_size) then ("--insert_size " +  '"' + insert_size + '"') else ""} \
      ~{if defined(steps) then ("--steps " +  '"' + steps + '"') else ""} \
      ~{if defined(fraction) then ("--fraction " +  '"' + fraction + '"') else ""} \
      ~{if defined(max_snp_len) then ("--max_snp_len " +  '"' + max_snp_len + '"') else ""} \
      ~{if defined(min_contig) then ("--min_contig " +  '"' + min_contig + '"') else ""} \
      ~{true="--allow_snps" false="" allow_snps} \
      ~{true="--force_single_ends" false="" force_single_ends} \
      ~{if defined(seeds) then ("--seeds " +  '"' + seeds + '"') else ""} \
      ~{if defined(all) then ("--all " +  '"' + all + '"') else ""} \
      ~{if defined(dbg_out) then ("--dbg_out " +  '"' + dbg_out + '"') else ""} \
      ~{if defined(hist) then ("--hist " +  '"' + hist + '"') else ""} \
      ~{if defined(connected_reads) then ("--connected_reads " +  '"' + connected_reads + '"') else ""}
  >>>
  parameter_meta {
    _print_version: "[ --version ]              Print version"
    cores: "(=0)              Number of cores to use (default all) [integer]"
    memory: "(=32)            Memory available (GB, only for sorted counter)  [integer]"
    hash_count: "Use hash counter [flag]"
    estimated_km_ers: "(=100)  Estimated number of unique kmers for bloom  filter (M, only for hash counter) [integer]"
    skip_bloom_filter: "Don't do bloom filter; use --estimated_kmers as the hash table size (only for hash counter)  [flag]"
    fast_a: "Input fasta file(s) (could be used multiple  times for different runs) [string]"
    fast_q: "Input fastq file(s) (could be used multiple  times for different runs) [string]"
    use_paired_ends: "Indicates that a single (not comma separated)  fasta/fastq file contains paired reads [flag]"
    contigs_out: "Output file for contigs (stdout if not  specified) [string]"
    km_er: "(=21)              Minimal kmer length for assembly [integer]"
    min_count: "Minimal count for kmers retained for comparing  alternate choices [integer]"
    max_km_er_count: "Minimum acceptable average count for estimating the maximal kmer length in reads [integer]"
    vector_percent: "(=0.05)  Count for  vectors as a fraction of the read  number (1. disables) [float (0,1]]"
    insert_size: "Expected insert size for paired reads (if not  provided, it will be estimated) [integer]"
    steps: "(=11)             Number of assembly iterations from minimal to  maximal kmer length in reads [integer]"
    fraction: "(=0.1)         Maximum noise to signal ratio acceptable for  extension [float [0,1)]"
    max_snp_len: "(=150)      Maximal snp length [integer]"
    min_contig: "(=200)       Minimal contig length reported in output  [integer]"
    allow_snps: "Allow additional step for snp discovery [flag]"
    force_single_ends: "Don't use paired-end information [flag]"
    seeds: "Input file with seeds [string]"
    all: "Output fasta for each iteration [string]"
    dbg_out: "Output kmer file [string]"
    hist: "File for histogram [string]"
    connected_reads: "File for connected paired reads [string]"
  }
}