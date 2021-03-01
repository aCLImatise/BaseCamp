version 1.0

task MegahitCorePopcntLocal {
  input {
    File? contig_file
    File? lib_file_prefix
    Int? seed_km_er
    Int? sparsity
    Float? similarity
    Int? num_threads
    String? o
    String? r
    String local
  }
  command <<<
    megahit_core_popcnt local \
      ~{local} \
      ~{if defined(contig_file) then ("--contig_file " +  '"' + contig_file + '"') else ""} \
      ~{if defined(lib_file_prefix) then ("--lib_file_prefix " +  '"' + lib_file_prefix + '"') else ""} \
      ~{if defined(seed_km_er) then ("--seed_kmer " +  '"' + seed_km_er + '"') else ""} \
      ~{if defined(sparsity) then ("--sparsity " +  '"' + sparsity + '"') else ""} \
      ~{if defined(similarity) then ("--similarity " +  '"' + similarity + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    contig_file: "contig file"
    lib_file_prefix: "lib file prefix"
    seed_km_er: "(=31)              kmer size for seeding alignments"
    sparsity: "(=8)                sparsity of hash mapper"
    similarity: "(=0.8)            alignment similarity threshold"
    num_threads: "(=0)"
    o: ""
    r: ""
    local: ""
  }
  output {
    File out_stdout = stdout()
  }
}