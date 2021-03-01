version 1.0

task PgSAgen {
  input {
    Int? kmer_length
    File? cache_file
    String? pg_no_sa
    String? use_after_generation
    String? r
    String reads_srcfile
    String? pair_srcfile
    String index_prefix
  }
  command <<<
    PgSAgen \
      ~{reads_srcfile} \
      ~{pair_srcfile} \
      ~{index_prefix} \
      ~{if defined(kmer_length) then ("-k " +  '"' + kmer_length + '"') else ""} \
      ~{if defined(cache_file) then ("-c " +  '"' + cache_file + '"') else ""} \
      ~{if defined(pg_no_sa) then ("-p " +  '"' + pg_no_sa + '"') else ""} \
      ~{if defined(use_after_generation) then ("-v " +  '"' + use_after_generation + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    kmer_length: "kmer length"
    cache_file: "cache file"
    pg_no_sa: "Pg, no SA"
    use_after_generation: "(use after generation)"
    r: ""
    reads_srcfile: ""
    pair_srcfile: ""
    index_prefix: ""
  }
  output {
    File out_stdout = stdout()
  }
}