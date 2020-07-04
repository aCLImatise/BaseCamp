version 1.0

task BayesTyperToolsAddAttributes {
  input {
    Boolean? arg_variant_format
    Boolean? arg_output_prefix
    Boolean? compress_output_files
    String? genome_file
    String? repeat_file
    String? independent_samples_regex
    String? trio_sample_info
  }
  command <<<
    bayesTyperTools addAttributes \
      ~{true="-v" false="" arg_variant_format} \
      ~{true="-o" false="" arg_output_prefix} \
      ~{true="-z" false="" compress_output_files} \
      ~{if defined(genome_file) then ("--genome-file " +  '"' + genome_file + '"') else ""} \
      ~{if defined(repeat_file) then ("--repeat-file " +  '"' + repeat_file + '"') else ""} \
      ~{if defined(independent_samples_regex) then ("--independent-samples-regex " +  '"' + independent_samples_regex + '"') else ""} \
      ~{if defined(trio_sample_info) then ("--trio-sample-info " +  '"' + trio_sample_info + '"') else ""}
  >>>
  parameter_meta {
    arg_variant_format: "[ --variant-file ] arg             variant file (vcf format)."
    arg_output_prefix: "[ --output-prefix ] arg            output prefix."
    compress_output_files: "[ --gzip-output ] [=arg(=1)] (=0)  compress output file(s) using gzip."
    genome_file: "reference genome file (fasta format) used for homopolymer length (HPL) calculation. If not specified HPL will not be  calculated."
    repeat_file: "repeatmasker file used for repeat annotation (RMA). If not specified RMA will not be annotated."
    independent_samples_regex: "regular expression for matching independent samples (e.g. parents in a trio) used for absolute inbreeding coefficient  (IBC) calculation. If not specified IBC will not be calculated."
    trio_sample_info: "trio sample id information used for concordance (CONC) calculation  (<father>,<mother>,<child>:<father>,<mother>,<child>:...). If not specified CONC will not be calculated."
  }
}