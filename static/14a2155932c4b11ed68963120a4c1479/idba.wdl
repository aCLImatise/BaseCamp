version 1.0

task Idba {
  input {
    Directory? out
    File? read
    Int? read_level_two
    Int? read_level_three
    Int? read_level_four
    Int? read_level_five
    File? long_read
    Int? mink
    Int? max_k
    Int? step
    Int? prefix
    Int? min_count
    Int? min_support
    Int? num_threads
    Int? seed_km_er
    Int? min_contig
    Float? similar
    Int? max_mismatch
    Int? min_pairs
    Boolean? no_coverage
    Boolean? no_correct
    Boolean? pre_correction
    String i_dba_ud
  }
  command <<<
    idba \
      ~{i_dba_ud} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(read) then ("--read " +  '"' + read + '"') else ""} \
      ~{if defined(read_level_two) then ("--read_level_2 " +  '"' + read_level_two + '"') else ""} \
      ~{if defined(read_level_three) then ("--read_level_3 " +  '"' + read_level_three + '"') else ""} \
      ~{if defined(read_level_four) then ("--read_level_4 " +  '"' + read_level_four + '"') else ""} \
      ~{if defined(read_level_five) then ("--read_level_5 " +  '"' + read_level_five + '"') else ""} \
      ~{if defined(long_read) then ("--long_read " +  '"' + long_read + '"') else ""} \
      ~{if defined(mink) then ("--mink " +  '"' + mink + '"') else ""} \
      ~{if defined(max_k) then ("--maxk " +  '"' + max_k + '"') else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(min_count) then ("--min_count " +  '"' + min_count + '"') else ""} \
      ~{if defined(min_support) then ("--min_support " +  '"' + min_support + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(seed_km_er) then ("--seed_kmer " +  '"' + seed_km_er + '"') else ""} \
      ~{if defined(min_contig) then ("--min_contig " +  '"' + min_contig + '"') else ""} \
      ~{if defined(similar) then ("--similar " +  '"' + similar + '"') else ""} \
      ~{if defined(max_mismatch) then ("--max_mismatch " +  '"' + max_mismatch + '"') else ""} \
      ~{if defined(min_pairs) then ("--min_pairs " +  '"' + min_pairs + '"') else ""} \
      ~{if (no_coverage) then "--no_coverage" else ""} \
      ~{if (no_correct) then "--no_correct" else ""} \
      ~{if (pre_correction) then "--pre_correction" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out: "(=out)                   output directory"
    read: "fasta read file (<=512)"
    read_level_two: "paired-end reads fasta for second level scaffolds"
    read_level_three: "paired-end reads fasta for third level scaffolds"
    read_level_four: "paired-end reads fasta for fourth level scaffolds"
    read_level_five: "paired-end reads fasta for fifth level scaffolds"
    long_read: "fasta long read file (>512)"
    mink: "(=20)                   minimum k value (<=124)"
    max_k: "(=50)                   maximum k value (<=124)"
    step: "(=10)                   increment of k-mer of each iteration"
    prefix: "(=3)                  prefix length used to build sub k-mer table"
    min_count: "(=2)               minimum multiplicity for filtering k-mer when building the graph"
    min_support: "(=1)             minimum supoort in each iteration"
    num_threads: "(=0)             number of threads"
    seed_km_er: "(=30)              seed kmer size for alignment"
    min_contig: "(=200)            minimum size of contig"
    similar: "(=0.95)              similarity for alignment"
    max_mismatch: "(=3)            max mismatch of error correction"
    min_pairs: "(=3)               minimum number of pairs"
    no_coverage: "do not iterate on coverage"
    no_correct: "do not do correction"
    pre_correction: "perform pre-correction before assembly"
    i_dba_ud: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}