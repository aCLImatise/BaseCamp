version 1.0

task Scaffold {
  input {
    Directory? out
    Int? num_threads
    Int? seed_km_er
    Int? min_contig
    Float? similar
    Int? min_pairs
    Int reads_lib_one_dot_fa
    Int? reads_lib_two_dot_fa
  }
  command <<<
    scaffold \
      ~{reads_lib_one_dot_fa} \
      ~{reads_lib_two_dot_fa} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(num_threads) then ("--num_threads " +  '"' + num_threads + '"') else ""} \
      ~{if defined(seed_km_er) then ("--seed_kmer " +  '"' + seed_km_er + '"') else ""} \
      ~{if defined(min_contig) then ("--min_contig " +  '"' + min_contig + '"') else ""} \
      ~{if defined(similar) then ("--similar " +  '"' + similar + '"') else ""} \
      ~{if defined(min_pairs) then ("--min_pairs " +  '"' + min_pairs + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out: "(=out)                   output directory"
    num_threads: "(=0)             number of threads"
    seed_km_er: "(=30)              seed kmer size for alignment"
    min_contig: "(=200)            min size of contig"
    similar: "(=0.95)              similarity for alignment"
    min_pairs: "(=3)               minimum number of pairs"
    reads_lib_one_dot_fa: ""
    reads_lib_two_dot_fa: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_out = "${in_out}"
  }
}