version 1.0

task MegahitCoreNoHwAccelLocal {
  input {
    Int? contig_file
    String? o
    String? r
    String local
  }
  command <<<
    megahit_core_no_hw_accel local \
      ~{local} \
      ~{if defined(contig_file) then ("--contig_file " +  '"' + contig_file + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    contig_file: "contig file\\n-l, --lib_file_prefix arg              lib file prefix\\n--kmin arg (=11)\\n--kmax arg (=41)\\n--step arg (=6)\\n--seed_kmer arg (=31)              kmer size for seeding alignments\\n--min_contig_len arg (=200)\\n--min_mapping_len arg (=75)\\n--sparsity arg (=8)                sparsity of hash mapper\\n--similarity arg (=0.8)            alignment similarity threshold\\n-t, --num_threads arg (=0)\\n-o, --output_file arg\\n"
    o: ""
    r: ""
    local: ""
  }
  output {
    File out_stdout = stdout()
  }
}