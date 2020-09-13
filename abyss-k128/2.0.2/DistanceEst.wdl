version 1.0

task DistanceEst {
  input {
    Int? mind
    String? maxd
    Boolean? fr
    Boolean? rf
    Int? km_er
    Int? min_align
    Int? n_pairs
    Int? seed_length
    Int? min_mapq
    File? out
    Boolean? mle
    Boolean? mean
    Boolean? dist
    Boolean? dot
    Int? threads
    Boolean? verbose
    File? db
    String? library
    String? strain
    String? species
    String hist
    String alignments_between_contigs
  }
  command <<<
    DistanceEst \
      ~{hist} \
      ~{alignments_between_contigs} \
      ~{if defined(mind) then ("--mind " +  '"' + mind + '"') else ""} \
      ~{if defined(maxd) then ("--maxd " +  '"' + maxd + '"') else ""} \
      ~{if (fr) then "--fr" else ""} \
      ~{if (rf) then "--rf" else ""} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(min_align) then ("--min-align " +  '"' + min_align + '"') else ""} \
      ~{if defined(n_pairs) then ("--npairs " +  '"' + n_pairs + '"') else ""} \
      ~{if defined(seed_length) then ("--seed-length " +  '"' + seed_length + '"') else ""} \
      ~{if defined(min_mapq) then ("--min-mapq " +  '"' + min_mapq + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if (mle) then "--mle" else ""} \
      ~{if (mean) then "--mean" else ""} \
      ~{if (dist) then "--dist" else ""} \
      ~{if (dot) then "--dot" else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(library) then ("--library " +  '"' + library + '"') else ""} \
      ~{if defined(strain) then ("--strain " +  '"' + strain + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""}
  >>>
  parameter_meta {
    mind: "minimum distance between contigs [-(k-1)]"
    maxd: "maximum distance between contigs"
    fr: "force the orientation to forward-reverse"
    rf: "force the orientation to reverse-forward"
    km_er: "set --mind to -(k-1) bp"
    min_align: "the minimal alignment size [1]"
    n_pairs: "minimum number of pairs"
    seed_length: "minimum length of the seed contigs"
    min_mapq: "ignore alignments with mapping quality\\nless than this threshold [10]"
    out: "write result to FILE"
    mle: "use the MLE [default]\\n(maximum likelihood estimator)"
    mean: "use the difference of the population mean\\nand the sample mean"
    dist: "output graph in dist format [default]"
    dot: "output graph in dot format"
    threads: "use N parallel threads [1]"
    verbose: "display verbose output"
    db: "specify path of database repository in FILE"
    library: "specify library NAME for sqlite"
    strain: "specify strain NAME for sqlite"
    species: "specify species NAME for sqlite"
    hist: "distribution of fragments size"
    alignments_between_contigs: "alignments between contigs"
  }
  output {
    File out_stdout = stdout()
  }
}