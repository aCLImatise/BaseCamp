version 1.0

task Kmds {
  input {
    Boolean? arg_dsm_kmer
    Boolean? _arg_metadata
    Boolean? arg_output_prefix
    Boolean? no_mds
    Boolean? write_distances
    String? mds_concat
    String? pc
    String? size
    String? threads
    Boolean? no_filtering
    String? max_length
    String? maf
    String? min_words
  }
  command <<<
    kmds \
      ~{true="-k" false="" arg_dsm_kmer} \
      ~{true="-p" false="" _arg_metadata} \
      ~{true="-o" false="" arg_output_prefix} \
      ~{true="--no_mds" false="" no_mds} \
      ~{true="--write_distances" false="" write_distances} \
      ~{if defined(mds_concat) then ("--mds_concat " +  '"' + mds_concat + '"') else ""} \
      ~{if defined(pc) then ("--pc " +  '"' + pc + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--no_filtering" false="" no_filtering} \
      ~{if defined(max_length) then ("--max_length " +  '"' + max_length + '"') else ""} \
      ~{if defined(maf) then ("--maf " +  '"' + maf + '"') else ""} \
      ~{if defined(min_words) then ("--min_words " +  '"' + min_words + '"') else ""}
  >>>
  parameter_meta {
    arg_dsm_kmer: "[ --kmers ] arg       dsm kmer output file (not needed if using  --mds_concat)"
    _arg_metadata: "[ --pheno ] arg       .pheno metadata"
    arg_output_prefix: "[ --output ] arg      output prefix for new dsm file"
    no_mds: "do not perform MDS; output subsampled matrix instead"
    write_distances: "write csv of distance matrix"
    mds_concat: "list of subsampled matrices to use in MDS. Performs  only MDS; implies --no_filtering"
    pc: "(=10)           number of principal coordinates to output"
    size: "(=1000000)    number of kmers to use in MDS"
    threads: "(=1)       number of threads. Suggested: 8"
    no_filtering: "turn off all filtering and do not output new kmer  file"
    max_length: "(=100)  maximum kmer length"
    maf: "(=0.01)        minimum kmer frequency"
    min_words: "minimum kmer occurences. Overrides --maf"
  }
}