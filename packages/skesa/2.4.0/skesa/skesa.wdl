version 1.0

task Skesa {
  input {
    Boolean? _print_version
    Int? cores
    Int? memory
    Boolean? hash_count
    Int? estimated_km_ers
    Boolean? skip_bloom_filter
    File? reads
    Boolean? use_paired_ends
    File? contigs_out
    Int? km_er
    Int? min_count
    Int? max_km_er
    Int? max_km_er_count
    Float? vector_percent
    Int? insert_size
    Int? steps
    Float? fraction
    Int? max_snp_len
    Int? min_contig
    Boolean? allow_snps
    Boolean? force_single_ends
    File? seeds
    String? all
    File? dbg_out
    File? hist
    File? connected_reads
  }
  command <<<
    skesa \
      ~{if (_print_version) then "-v" else ""} \
      ~{if defined(cores) then ("--cores " +  '"' + cores + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""} \
      ~{if (hash_count) then "--hash_count" else ""} \
      ~{if defined(estimated_km_ers) then ("--estimated_kmers " +  '"' + estimated_km_ers + '"') else ""} \
      ~{if (skip_bloom_filter) then "--skip_bloom_filter" else ""} \
      ~{if defined(reads) then ("--reads " +  '"' + reads + '"') else ""} \
      ~{if (use_paired_ends) then "--use_paired_ends" else ""} \
      ~{if defined(contigs_out) then ("--contigs_out " +  '"' + contigs_out + '"') else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(min_count) then ("--min_count " +  '"' + min_count + '"') else ""} \
      ~{if defined(max_km_er) then ("--max_kmer " +  '"' + max_km_er + '"') else ""} \
      ~{if defined(max_km_er_count) then ("--max_kmer_count " +  '"' + max_km_er_count + '"') else ""} \
      ~{if defined(vector_percent) then ("--vector_percent " +  '"' + vector_percent + '"') else ""} \
      ~{if defined(insert_size) then ("--insert_size " +  '"' + insert_size + '"') else ""} \
      ~{if defined(steps) then ("--steps " +  '"' + steps + '"') else ""} \
      ~{if defined(fraction) then ("--fraction " +  '"' + fraction + '"') else ""} \
      ~{if defined(max_snp_len) then ("--max_snp_len " +  '"' + max_snp_len + '"') else ""} \
      ~{if defined(min_contig) then ("--min_contig " +  '"' + min_contig + '"') else ""} \
      ~{if (allow_snps) then "--allow_snps" else ""} \
      ~{if (force_single_ends) then "--force_single_ends" else ""} \
      ~{if defined(seeds) then ("--seeds " +  '"' + seeds + '"') else ""} \
      ~{if defined(all) then ("--all " +  '"' + all + '"') else ""} \
      ~{if defined(dbg_out) then ("--dbg_out " +  '"' + dbg_out + '"') else ""} \
      ~{if defined(hist) then ("--hist " +  '"' + hist + '"') else ""} \
      ~{if defined(connected_reads) then ("--connected_reads " +  '"' + connected_reads + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/skesa:2.4.0--he1c1bb9_0"
  }
  parameter_meta {
    _print_version: "[ --version ]              Print version"
    cores: "(=0)              Number of cores to use (default all) [integer]"
    memory: "(=32)            Memory available (GB, only for sorted counter)\\n[integer]"
    hash_count: "Use hash counter [flag]"
    estimated_km_ers: "(=100)  Estimated number of unique kmers for bloom\\nfilter (millions, only for hash counter)\\n[integer]"
    skip_bloom_filter: "Don't do bloom filter; use --estimated_kmers as\\nthe hash table size (only for hash counter)\\n[flag]"
    reads: "Input fasta/fastq file(s) for reads (could be\\nused multiple times for different runs, could\\nbe gzipped) [string]"
    use_paired_ends: "Indicates that a single (not comma separated)\\nfasta/fastq file contains paired reads [flag]"
    contigs_out: "Output file for contigs (stdout if not\\nspecified) [string]"
    km_er: "(=21)              Minimal kmer length for assembly [integer]"
    min_count: "Minimal count for kmers retained for comparing\\nalternate choices [integer]"
    max_km_er: "Maximal kmer length for assembly [integer]"
    max_km_er_count: "Minimum acceptable average count for estimating\\nthe maximal kmer length in reads [integer]"
    vector_percent: "(=0.05)  Count for  vectors as a fraction of the read\\nnumber (1. disables) [float (0,1]]"
    insert_size: "Expected insert size for paired reads (if not\\nprovided, it will be estimated) [integer]"
    steps: "(=11)             Number of assembly iterations from minimal to\\nmaximal kmer length in reads [integer]"
    fraction: "(=0.1)         Maximum noise to signal ratio acceptable for\\nextension [float [0,1)]"
    max_snp_len: "(=150)      Maximal snp length [integer]"
    min_contig: "(=200)       Minimal contig length reported in output\\n[integer]"
    allow_snps: "Allow additional step for snp discovery [flag]"
    force_single_ends: "Don't use paired-end information [flag]"
    seeds: "Input file with seeds [string]"
    all: "Output fasta for each iteration [string]"
    dbg_out: "Output kmer file [string]"
    hist: "File for histogram [string]"
    connected_reads: "File for connected paired reads [string]"
  }
  output {
    File out_stdout = stdout()
    File out_contigs_out = "${in_contigs_out}"
    File out_dbg_out = "${in_dbg_out}"
  }
}