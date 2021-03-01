version 1.0

task SimpleGraph {
  input {
    Int? km_er
    Int? dist_error
    Int? max_cost
    File? out
    Int? threads
    Boolean? extend
    Boolean? no_extend
    Boolean? scaffold
    Boolean? no_scaffold
    Boolean? verbose
    File? db
    String? library
    String? strain
    String? species
    String adj
    String dist
  }
  command <<<
    SimpleGraph \
      ~{adj} \
      ~{dist} \
      ~{if defined(km_er) then ("--kmer " +  '"' + km_er + '"') else ""} \
      ~{if defined(dist_error) then ("--dist-error " +  '"' + dist_error + '"') else ""} \
      ~{if defined(max_cost) then ("--max-cost " +  '"' + max_cost + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (extend) then "--extend" else ""} \
      ~{if (no_extend) then "--no-extend" else ""} \
      ~{if (scaffold) then "--scaffold" else ""} \
      ~{if (no_scaffold) then "--no-scaffold" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(library) then ("--library " +  '"' + library + '"') else ""} \
      ~{if defined(strain) then ("--strain " +  '"' + strain + '"') else ""} \
      ~{if defined(species) then ("--species " +  '"' + species + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    km_er: "k-mer size"
    dist_error: "acceptable error of a distance estimate\\ndefault is 6 bp"
    max_cost: "maximum computational cost"
    out: "write result to FILE"
    threads: "use THREADS parallel threads [1]"
    extend: "extend unambiguous paths"
    no_extend: "do not extend unambiguous paths [default]"
    scaffold: "join contigs with Ns [default]"
    no_scaffold: "do not scaffold"
    verbose: "display verbose output"
    db: "specify path of database repository in FILE"
    library: "specify library NAME for sqlite"
    strain: "specify strain NAME for sqlite"
    species: "specify species NAME for sqlite"
    adj: "adjacency of the contigs"
    dist: "distance estimates between the contigs"
  }
  output {
    File out_stdout = stdout()
  }
}