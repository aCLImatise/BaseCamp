version 1.0

task FmlAsm {
  input {
    Int? kmer_length_disable
    Array[Int] range_kmer_read
    Int? min_overlap_length
    Float? drop_overlap_length
    Int? number_threads_use
    Boolean? discard_heterozygotes_apply
    String in_dot_fq
  }
  command <<<
    fml-asm \
      ~{in_dot_fq} \
      ~{if defined(kmer_length_disable) then ("-e " +  '"' + kmer_length_disable + '"') else ""} \
      ~{if defined(range_kmer_read) then ("-c " +  '"' + range_kmer_read + '"') else ""} \
      ~{if defined(min_overlap_length) then ("-l " +  '"' + min_overlap_length + '"') else ""} \
      ~{if defined(drop_overlap_length) then ("-r " +  '"' + drop_overlap_length + '"') else ""} \
      ~{if defined(number_threads_use) then ("-t " +  '"' + number_threads_use + '"') else ""} \
      ~{true="-A" false="" discard_heterozygotes_apply}
  >>>
  parameter_meta {
    kmer_length_disable: "k-mer length for error correction (0 for auto; -1 to disable) [0]"
    range_kmer_read: "range of k-mer & read count thresholds for ec and graph cleaning [4,8]"
    min_overlap_length: "min overlap length during initial assembly [33]"
    drop_overlap_length: "drop an overlap if its length is below maxOvlpLen*FLOAT [0.7]"
    number_threads_use: "number of threads (don't use multi-threading for small data sets) [1]"
    discard_heterozygotes_apply: "discard heterozygotes (apply this to assemble bacterial genomes)"
    in_dot_fq: ""
  }
}