version 1.0

task Kmds {
  input {
    File? arg_dsm_kmer
    Boolean? arg_pheno_metadata
    File? arg_output_prefix
    Boolean? no_mds
    Boolean? write_distances
    String? mds_concat
    Int? pc
    Int? size
    Int? threads
    Boolean? no_filtering
    Float? maf
    String? min_words
    File file
  }
  command <<<
    kmds \
      ~{file} \
      ~{if (arg_dsm_kmer) then "-k" else ""} \
      ~{if (arg_pheno_metadata) then "-p" else ""} \
      ~{if (arg_output_prefix) then "-o" else ""} \
      ~{if (no_mds) then "--no_mds" else ""} \
      ~{if (write_distances) then "--write_distances" else ""} \
      ~{if defined(mds_concat) then ("--mds_concat " +  '"' + mds_concat + '"') else ""} \
      ~{if defined(pc) then ("--pc " +  '"' + pc + '"') else ""} \
      ~{if defined(size) then ("--size " +  '"' + size + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (no_filtering) then "--no_filtering" else ""} \
      ~{if defined(maf) then ("--maf " +  '"' + maf + '"') else ""} \
      ~{if defined(min_words) then ("--min_words " +  '"' + min_words + '"') else ""}
  >>>
  parameter_meta {
    arg_dsm_kmer: "[ --kmers ] arg       dsm kmer output file (not needed if using"
    arg_pheno_metadata: "[ --pheno ] arg       .pheno metadata"
    arg_output_prefix: "[ --output ] arg      output prefix for new dsm file"
    no_mds: "do not perform MDS; output subsampled matrix instead"
    write_distances: "write csv of distance matrix"
    mds_concat: "list of subsampled matrices to use in MDS. Performs\\nonly MDS; implies --no_filtering"
    pc: "(=10)           number of principal coordinates to output"
    size: "(=1000000)    number of kmers to use in MDS"
    threads: "(=1)       number of threads. Suggested: 8"
    no_filtering: "turn off all filtering and do not output new kmer"
    maf: "(=0.01)        minimum kmer frequency"
    min_words: "minimum kmer occurences. Overrides --maf"
    file: "--max_length arg (=100)  maximum kmer length"
  }
  output {
    File out_stdout = stdout()
    File out_arg_dsm_kmer = "${in_arg_dsm_kmer}"
    File out_arg_output_prefix = "${in_arg_output_prefix}"
  }
}