version 1.0

task Porfast {
  input {
    Int? r_one
    Int? r_two
    Int? min_size
    String? prefix
    Int? pool_size
    Boolean? verbose
    Boolean? join
    Int? min_overlap
    Int? max_overlap
    Int? min_identity
  }
  command <<<
    porfast \
      ~{if defined(r_one) then ("--R1 " +  '"' + r_one + '"') else ""} \
      ~{if defined(r_two) then ("--R2 " +  '"' + r_two + '"') else ""} \
      ~{if defined(min_size) then ("--min-size " +  '"' + min_size + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(pool_size) then ("--pool-size " +  '"' + pool_size + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (join) then "--join" else ""} \
      ~{if defined(min_overlap) then ("--min-overlap " +  '"' + min_overlap + '"') else ""} \
      ~{if defined(max_overlap) then ("--max-overlap " +  '"' + max_overlap + '"') else ""} \
      ~{if defined(min_identity) then ("--min-identity " +  '"' + min_identity + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/porfast:0.8.0--hed695b0_1"
  }
  parameter_meta {
    r_one: "FASTQ file, first pair"
    r_two: "FASTQ file, second pair"
    min_size: "Minimum ORF size (aa) (default: 26)"
    prefix: "Rename reads using this prefix"
    pool_size: "Size of the batch of reads to process per thread (default: 250)"
    verbose: "Print verbose info"
    join: "Try joining paired ends"
    min_overlap: "Minimum PE overlap (default: 12)"
    max_overlap: "Maximum PE overlap (default: 200)"
    min_identity: "Minimum sequence identity in overlap (default: 0.85)"
  }
  output {
    File out_stdout = stdout()
  }
}