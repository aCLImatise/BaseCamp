version 1.0

task IdbaTran {
  input {
    String? out
    String? read
    String? long_read
    String? mink
    String? max_k
    String? step
    String? inner_mink
    String? inner_step
    String? prefix
    String? min_count
    String? min_support
    String? num_threads
    String? seed_km_er
    String? min_contig
    String? min_transcript
    String? similar
    String? max_mismatch
    Boolean? no_local
    Boolean? no_coverage
    Boolean? no_correct
    Boolean? pre_correction
    String? max_isoforms
    String? max_component_size
  }
  command <<<
    idba_tran \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(read) then ("--read " +  '"' + read + '"') else ""} \
      ~{if defined(long_read) then ("--long_read " +  '"' + long_read + '"') else ""} \
      ~{if defined(mink) then ("--mink " +  '"' + mink + '"') else ""} \
      ~{if defined(max_k) then ("--maxk " +  '"' + max_k + '"') else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""} \
      ~{if defined(inner_mink) then ("--inner_mink " +  '"' + inner_mink + '"') else ""} \
      ~{if defined(inner_step) then ("--inner_step " +  '"' + inner_step + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(min_count) then ("--min_count " +  '"' + min_count + '"') else ""} \
      ~{if defined(min_support) then ("--min_support " +  '"' + min_support + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(seed_km_er) then ("--seed_kmer " +  '"' + seed_km_er + '"') else ""} \
      ~{if defined(min_contig) then ("--min_contig " +  '"' + min_contig + '"') else ""} \
      ~{if defined(min_transcript) then ("--min_transcript " +  '"' + min_transcript + '"') else ""} \
      ~{if defined(similar) then ("--similar " +  '"' + similar + '"') else ""} \
      ~{if defined(max_mismatch) then ("--max_mismatch " +  '"' + max_mismatch + '"') else ""} \
      ~{true="--no_local" false="" no_local} \
      ~{true="--no_coverage" false="" no_coverage} \
      ~{true="--no_correct" false="" no_correct} \
      ~{true="--pre_correction" false="" pre_correction} \
      ~{if defined(max_isoforms) then ("--max_isoforms " +  '"' + max_isoforms + '"') else ""} \
      ~{if defined(max_component_size) then ("--max_component_size " +  '"' + max_component_size + '"') else ""}
  >>>
  parameter_meta {
    out: "(=out)                   output directory"
    read: "fasta read file (<=512)"
    long_read: "fasta long read file (>512)"
    mink: "(=20)                   minimum k value (<=124)"
    max_k: "(=60)                   maximum k value (<=124)"
    step: "(=10)                   increment of k-mer of each iteration"
    inner_mink: "(=10)             inner minimum k value"
    inner_step: "(=5)              inner increment of k-mer"
    prefix: "(=3)                  prefix length used to build sub k-mer table"
    min_count: "(=2)               minimum multiplicity for filtering k-mer when building the graph"
    min_support: "(=1)             minimum supoort in each iteration"
    num_threads: "(=0)             number of threads"
    seed_km_er: "(=30)              seed kmer size for alignment"
    min_contig: "(=200)            minimum size of contig"
    min_transcript: "(=300)        minimum size of transcript"
    similar: "(=0.95)              similarity for alignment"
    max_mismatch: "(=3)            max mismatch of error correction"
    no_local: "do not use local assembly"
    no_coverage: "do not iterate on coverage"
    no_correct: "do not do correction"
    pre_correction: "perform pre-correction before assembly"
    max_isoforms: "(=3)            maximum number of isoforms"
    max_component_size: "(=30)     maximum size of components"
  }
}