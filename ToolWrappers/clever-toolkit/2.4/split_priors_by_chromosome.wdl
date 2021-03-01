version 1.0

task Splitpriorsbychromosome {
  input {
    Boolean? gzip_output_files
    String? only_extracts_given
    Boolean? use_gzip_instead
    String list_dot
  }
  command <<<
    split_priors_by_chromosome \
      ~{list_dot} \
      ~{if (gzip_output_files) then "-z" else ""} \
      ~{if defined(only_extracts_given) then ("-c " +  '"' + only_extracts_given + '"') else ""} \
      ~{if (use_gzip_instead) then "-g" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gzip_output_files: "GZIP output files"
    only_extracts_given: "Only extracts given chromosomes. Expects comma-separated"
    use_gzip_instead: "Use gzip instead of python zip module. Can be faster, but\\nwill spawn one gzip process for every chromosome/sample,\\nwhich can be a lot.\\n"
    list_dot: "-s SAMPLEWISE   Read header of given BAM file and priors split by sample"
  }
  output {
    File out_stdout = stdout()
  }
}