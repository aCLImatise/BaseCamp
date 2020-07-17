version 1.0

task BayesTyperToolsCombine {
  input {
    Boolean? arg_commaseparated_list
    Boolean? arg_output_prefix
    Boolean? compress_output_files
    Boolean? filter_ambiguous_alleles
  }
  command <<<
    bayesTyperTools combine \
      ~{true="-v" false="" arg_commaseparated_list} \
      ~{true="-o" false="" arg_output_prefix} \
      ~{true="-z" false="" compress_output_files} \
      ~{true="--filter-ambiguous-alleles" false="" filter_ambiguous_alleles}
  >>>
  parameter_meta {
    arg_commaseparated_list: "[ --variant-files ] arg            comma-separated list of name and variant file (vcf format) pairs (<name>:<file>)."
    arg_output_prefix: "[ --output-prefix ] arg            output prefix."
    compress_output_files: "[ --gzip-output ] [=arg(=1)] (=0)  compress output file(s) using gzip."
    filter_ambiguous_alleles: "[=arg(=1)] (=0) filter alleles (including reference) with ambiguous nucleotides (non ACGT)."
  }
}