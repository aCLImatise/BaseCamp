version 1.0

task SplitPriorsByChromosome {
  input {
    Boolean? gzip_output_files
    String? only_extracts_given
    String? read_header_given
    Boolean? use_gzip_instead
    String output_prefix
  }
  command <<<
    split-priors-by-chromosome \
      ~{output_prefix} \
      ~{true="-z" false="" gzip_output_files} \
      ~{if defined(only_extracts_given) then ("-c " +  '"' + only_extracts_given + '"') else ""} \
      ~{if defined(read_header_given) then ("-s " +  '"' + read_header_given + '"') else ""} \
      ~{true="-g" false="" use_gzip_instead}
  >>>
  parameter_meta {
    gzip_output_files: "GZIP output files"
    only_extracts_given: "Only extracts given chromosomes. Expects comma-separated list."
    read_header_given: "Read header of given BAM file and priors split by sample (encoded in read groups)."
    use_gzip_instead: "Use gzip instead of python zip module. Can be faster, but will spawn one gzip process for every chromosome/sample, which can be a lot."
    output_prefix: ""
  }
}