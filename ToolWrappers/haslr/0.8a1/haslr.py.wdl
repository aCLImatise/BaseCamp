version 1.0

task Haslrpy {
  input {
    Directory? out
    Int? genome
    File? long
    String? type
    Array[String] short
    Int? threads
    Int? cov_lr
    Int? aln_block
    Float? aln_sim
    Int? edge_sup
    Int? mini_a_km_er
    Int? mini_a_solid
    String? mini_a_asm
  }
  command <<<
    haslr_py \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(long) then ("--long " +  '"' + long + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(short) then ("--short " +  '"' + short + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(cov_lr) then ("--cov-lr " +  '"' + cov_lr + '"') else ""} \
      ~{if defined(aln_block) then ("--aln-block " +  '"' + aln_block + '"') else ""} \
      ~{if defined(aln_sim) then ("--aln-sim " +  '"' + aln_sim + '"') else ""} \
      ~{if defined(edge_sup) then ("--edge-sup " +  '"' + edge_sup + '"') else ""} \
      ~{if defined(mini_a_km_er) then ("--minia-kmer " +  '"' + mini_a_km_er + '"') else ""} \
      ~{if defined(mini_a_solid) then ("--minia-solid " +  '"' + mini_a_solid + '"') else ""} \
      ~{if defined(mini_a_asm) then ("--minia-asm " +  '"' + mini_a_asm + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out: "output directory"
    genome: "estimated genome size; accepted suffixes are k,m,g"
    long: "long read file"
    type: "type of long reads chosen from {pacbio,nanopore}"
    short: "short read file"
    threads: "number of CPU threads to use [1]"
    cov_lr: "amount of long read coverage to use for assembly [25]"
    aln_block: "minimum length of alignment block [500]"
    aln_sim: "minimum alignment similarity [0.85]"
    edge_sup: "minimum number of long read supporting each edge [3]"
    mini_a_km_er: "kmer size used by minia [49]"
    mini_a_solid: "minimum kmer abundance used by minia [3]"
    mini_a_asm: "type of minia assembly chosen from {contigs,unitigs} [contigs]"
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}