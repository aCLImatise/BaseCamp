version 1.0

task BayesTyperToolsCombine {
  input {
    Boolean? arg_commaseparated_list
    Boolean? arg_output_prefix
    File? compress_output_files
    Boolean? filter_ambiguous_alleles
  }
  command <<<
    bayesTyperTools combine \
      ~{if (arg_commaseparated_list) then "-v" else ""} \
      ~{if (arg_output_prefix) then "-o" else ""} \
      ~{if (compress_output_files) then "-z" else ""} \
      ~{if (filter_ambiguous_alleles) then "--filter-ambiguous-alleles" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arg_commaseparated_list: "[ --variant-files ] arg            comma-separated list of name and variant file (vcf format) pairs (<name>:<file>)."
    arg_output_prefix: "[ --output-prefix ] arg            output prefix."
    compress_output_files: "[ --gzip-output ] [=arg(=1)] (=0)  compress output file(s) using gzip."
    filter_ambiguous_alleles: "[=arg(=1)] (=0)\\nfilter alleles (including reference) with ambiguous nucleotides (non ACGT).\\n"
  }
  output {
    File out_stdout = stdout()
    File out_compress_output_files = "${in_compress_output_files}"
  }
}