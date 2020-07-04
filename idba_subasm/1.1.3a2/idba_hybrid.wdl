version 1.0

task IdbaHybrid {
  input {
    String? out
    String? read
    String? read_level_two
    String? read_level_three
    String? read_level_four
    String? read_level_five
    String? long_read
    String? reference
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
    String? min_region
    String? similar
    String? max_mismatch
    String? min_pairs
    String? max_gap
    Boolean? no_local
    Boolean? no_coverage
    Boolean? no_correct
    Boolean? pre_correction
  }
  command <<<
    idba_hybrid \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(read) then ("--read " +  '"' + read + '"') else ""} \
      ~{if defined(read_level_two) then ("--read_level_2 " +  '"' + read_level_two + '"') else ""} \
      ~{if defined(read_level_three) then ("--read_level_3 " +  '"' + read_level_three + '"') else ""} \
      ~{if defined(read_level_four) then ("--read_level_4 " +  '"' + read_level_four + '"') else ""} \
      ~{if defined(read_level_five) then ("--read_level_5 " +  '"' + read_level_five + '"') else ""} \
      ~{if defined(long_read) then ("--long_read " +  '"' + long_read + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
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
      ~{if defined(min_region) then ("--min_region " +  '"' + min_region + '"') else ""} \
      ~{if defined(similar) then ("--similar " +  '"' + similar + '"') else ""} \
      ~{if defined(max_mismatch) then ("--max_mismatch " +  '"' + max_mismatch + '"') else ""} \
      ~{if defined(min_pairs) then ("--min_pairs " +  '"' + min_pairs + '"') else ""} \
      ~{if defined(max_gap) then ("--max_gap " +  '"' + max_gap + '"') else ""} \
      ~{true="--no_local" false="" no_local} \
      ~{true="--no_coverage" false="" no_coverage} \
      ~{true="--no_correct" false="" no_correct} \
      ~{true="--pre_correction" false="" pre_correction}
  >>>
  parameter_meta {
    out: "(=out)                   output directory"
    read: "fasta read file (<=512)"
    read_level_two: "paired-end reads fasta for second level scaffolds"
    read_level_three: "paired-end reads fasta for third level scaffolds"
    read_level_four: "paired-end reads fasta for fourth level scaffolds"
    read_level_five: "paired-end reads fasta for fifth level scaffolds"
    long_read: "fasta long read file (>512)"
    reference: "reference genome"
    mink: "(=20)                   minimum k value (<=124)"
    max_k: "(=100)                  maximum k value (<=124)"
    step: "(=20)                   increment of k-mer of each iteration"
    inner_mink: "(=10)             inner minimum k value"
    inner_step: "(=5)              inner increment of k-mer"
    prefix: "(=3)                  prefix length used to build sub k-mer table"
    min_count: "(=2)               minimum multiplicity for filtering k-mer when building the graph"
    min_support: "(=1)             minimum supoort in each iteration"
    num_threads: "(=0)             number of threads"
    seed_km_er: "(=30)              seed kmer size for alignment"
    min_contig: "(=200)            minimum size of contig"
    min_region: "(=500)            minimum size of region in reference genome"
    similar: "(=0.95)              similarity for alignment"
    max_mismatch: "(=3)            max mismatch of error correction"
    min_pairs: "(=3)               minimum number of pairs"
    max_gap: "(=50)                maximum gap in reference"
    no_local: "do not use local assembly"
    no_coverage: "do not iterate on coverage"
    no_correct: "do not do correction"
    pre_correction: "perform pre-correction before assembly"
  }
}