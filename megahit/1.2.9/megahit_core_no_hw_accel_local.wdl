version 1.0

task MegahitCoreNoHwAccelLocal {
  input {
    File? contig_file
    File? lib_file_prefix
    Int? km_in
    Int? kmax
    Int? step
    Int? seed_km_er
    Int? min_contig_len
    Int? min_mapping_len
    Int? sparsity
    Float? similarity
    Int? num_threads
    String? output_file
    String? r
    String local
  }
  command <<<
    megahit_core_no_hw_accel local \
      ~{local} \
      ~{if defined(contig_file) then ("--contig_file " +  '"' + contig_file + '"') else ""} \
      ~{if defined(lib_file_prefix) then ("--lib_file_prefix " +  '"' + lib_file_prefix + '"') else ""} \
      ~{if defined(km_in) then ("--kmin " +  '"' + km_in + '"') else ""} \
      ~{if defined(kmax) then ("--kmax " +  '"' + kmax + '"') else ""} \
      ~{if defined(step) then ("--step " +  '"' + step + '"') else ""} \
      ~{if defined(seed_km_er) then ("--seed_kmer " +  '"' + seed_km_er + '"') else ""} \
      ~{if defined(min_contig_len) then ("--min_contig_len " +  '"' + min_contig_len + '"') else ""} \
      ~{if defined(min_mapping_len) then ("--min_mapping_len " +  '"' + min_mapping_len + '"') else ""} \
      ~{if defined(sparsity) then ("--sparsity " +  '"' + sparsity + '"') else ""} \
      ~{if defined(similarity) then ("--similarity " +  '"' + similarity + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(output_file) then ("--output_file " +  '"' + output_file + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    contig_file: "contig file"
    lib_file_prefix: "lib file prefix"
    km_in: "(=11)"
    kmax: "(=41)"
    step: "(=6)"
    seed_km_er: "(=31)              kmer size for seeding alignments"
    min_contig_len: "(=200)"
    min_mapping_len: "(=75)"
    sparsity: "(=8)                sparsity of hash mapper"
    similarity: "(=0.8)            alignment similarity threshold"
    num_threads: "(=0)"
    output_file: ""
    r: ""
    local: ""
  }
  output {
    File out_stdout = stdout()
  }
}