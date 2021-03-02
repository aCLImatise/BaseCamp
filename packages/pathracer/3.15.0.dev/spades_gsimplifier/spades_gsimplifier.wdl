version 1.0

task Spadesgsimplifier {
  input {
    Boolean? gfa
    String? spades_gp
    Boolean? use_cov_ratios
    Int? kmer_length_use
    Int? read_length
    Int? coverage
    Int? threads
    File? profile
    File? stop_codons
    File? dead_ends
    Directory? tmpdir
  }
  command <<<
    spades_gsimplifier \
      ~{if (gfa) then "--gfa" else ""} \
      ~{if defined(spades_gp) then ("--spades-gp " +  '"' + spades_gp + '"') else ""} \
      ~{if (use_cov_ratios) then "--use-cov-ratios" else ""} \
      ~{if defined(kmer_length_use) then ("-k " +  '"' + kmer_length_use + '"') else ""} \
      ~{if defined(read_length) then ("--read-length " +  '"' + read_length + '"') else ""} \
      ~{if defined(coverage) then ("--coverage " +  '"' + coverage + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(profile) then ("--profile " +  '"' + profile + '"') else ""} \
      ~{if defined(stop_codons) then ("--stop-codons " +  '"' + stop_codons + '"') else ""} \
      ~{if defined(dead_ends) then ("--dead-ends " +  '"' + dead_ends + '"') else ""} \
      ~{if defined(tmpdir) then ("--tmpdir " +  '"' + tmpdir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/pathracer:3.15.0.dev--h2d02072_0"
  }
  parameter_meta {
    gfa: "produce GFA output (default: true)"
    spades_gp: "output graph pack in SPAdes internal format (default: false). Recommended if bulges are removed to improve further read mapping. In case GFA output is required with graph pack specify '--gfa'"
    use_cov_ratios: "enable procedures based on unitig coverage ratios (default: false)"
    kmer_length_use: "k-mer length to use"
    read_length: "read length"
    coverage: "estimated average (k+1-mer) bin coverage (default: 0.) or 'auto' (works only with '-d/--dead-ends' provided)"
    threads: "# of threads to use (default: max_threads / 2)"
    profile: "file with edge coverage profiles across multiple samples"
    stop_codons: "file stop codon positions"
    dead_ends: "while processing a subgraph -- file listing edges which are dead-ends in the original graph"
    tmpdir: "scratch directory to use (default: <output prefix>.tmp)\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_tmpdir = "${in_tmpdir}"
  }
}