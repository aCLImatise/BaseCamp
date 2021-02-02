version 1.0

task Mccortex127 {
  input {
    Boolean? quiet
    Boolean? force
    Int? memory
    Int? nk_mers
    Int? threads
    File? out
    File? paths
    String breakpoints
    String bubbles
    String build
    Int calls_two_vcf
    String check
    String clean
    String contigs
    String correct
    String coverage
    String dist
    String index
    String infer_edges
    String join
    String links
    String p_join
    String pop_bubbles
    String p_view
    String reads
    String rm_substr
    String server
    String sort
    String subgraph
    String thread
    String uniq_km_ers
    String unit_igs
    String vcf_cov
    String vcf_geno
    String view
  }
  command <<<
    mccortex127 \
      ~{breakpoints} \
      ~{bubbles} \
      ~{build} \
      ~{calls_two_vcf} \
      ~{check} \
      ~{clean} \
      ~{contigs} \
      ~{correct} \
      ~{coverage} \
      ~{dist} \
      ~{index} \
      ~{infer_edges} \
      ~{join} \
      ~{links} \
      ~{p_join} \
      ~{pop_bubbles} \
      ~{p_view} \
      ~{reads} \
      ~{rm_substr} \
      ~{server} \
      ~{sort} \
      ~{subgraph} \
      ~{thread} \
      ~{uniq_km_ers} \
      ~{unit_igs} \
      ~{vcf_cov} \
      ~{vcf_geno} \
      ~{view} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""} \
      ~{if defined(nk_mers) then ("--nkmers " +  '"' + nk_mers + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(paths) then ("--paths " +  '"' + paths + '"') else ""}
  >>>
  parameter_meta {
    quiet: "Silence status output normally printed to STDERR"
    force: "Overwrite output files if they already exist"
    memory: "Memory e.g. 1GB [default: 1GB]"
    nk_mers: "Hash entries [default: 4M, ~4 million]"
    threads: "Limit on proccessing threads [default: 2]"
    out: "Output file"
    paths: "Links file to load (can specify multiple times)"
    breakpoints: "use a trusted assembled genome to call large events"
    bubbles: "find bubbles in graph which are potential variants"
    build: "construct cortex graph from FASTA/FASTQ/BAM"
    calls_two_vcf: "convert bubble/breakpoint calls to VCF"
    check: "load and check graph (.ctx) and path (.ctp) files"
    clean: "clean errors from a graph"
    contigs: "assemble contigs for a sample"
    correct: "error correct reads"
    coverage: "print contig coverage"
    dist: "make colour kmer distance matrix"
    index: "index a sorted cortex graph file"
    infer_edges: "infer graph edges between kmers before calling `thread`"
    join: "combine graphs, filter graph intersections"
    links: "clean and plot link files (.ctp)"
    p_join: "merge link files (.ctp)"
    pop_bubbles: "pop bubbles in the population graph"
    p_view: "text view of a cortex link file (.ctp)"
    reads: "filter reads against a graph"
    rm_substr: "reduce set of strings to remove substrings"
    server: "interactively query the graph"
    sort: "sort the kmers in a graph file"
    subgraph: "filter a subgraph using seed kmers"
    thread: "thread reads through cleaned graph to make links"
    uniq_km_ers: "generate random unique kmers"
    unit_igs: "pull out unitigs in FASTA, DOT or GFA format"
    vcf_cov: "coverage of a VCF against cortex graphs"
    vcf_geno: "genotype a VCF after running vcfcov"
    view: "text view of a cortex graph file (.ctx)"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}