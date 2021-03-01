version 1.0

task BayesTyperToolsAddAttributes {
  input {
    Boolean? arg_variant_file
    Boolean? arg_output_prefix
    File? compress_output_files
    File? genome_file
    String? independent_samples_regex
    String? trio_sample_info
    String calculated_dot
  }
  command <<<
    bayesTyperTools addAttributes \
      ~{calculated_dot} \
      ~{if (arg_variant_file) then "-v" else ""} \
      ~{if (arg_output_prefix) then "-o" else ""} \
      ~{if (compress_output_files) then "-z" else ""} \
      ~{if defined(genome_file) then ("--genome-file " +  '"' + genome_file + '"') else ""} \
      ~{if defined(independent_samples_regex) then ("--independent-samples-regex " +  '"' + independent_samples_regex + '"') else ""} \
      ~{if defined(trio_sample_info) then ("--trio-sample-info " +  '"' + trio_sample_info + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    arg_variant_file: "[ --variant-file ] arg             variant file (vcf format)."
    arg_output_prefix: "[ --output-prefix ] arg            output prefix."
    compress_output_files: "[ --gzip-output ] [=arg(=1)] (=0)  compress output file(s) using gzip."
    genome_file: "reference genome file (fasta format) used for homopolymer length (HPL) calculation. If not specified HPL will not be"
    independent_samples_regex: "regular expression for matching independent samples (e.g. parents in a trio) used for absolute inbreeding coefficient\\n(IBC) calculation. If not specified IBC will not be calculated."
    trio_sample_info: "trio sample id information used for concordance (CONC) calculation\\n(<father>,<mother>,<child>:<father>,<mother>,<child>:...). If not specified CONC will not be calculated.\\n"
    calculated_dot: "--repeat-file arg                     repeatmasker file used for repeat annotation (RMA). If not specified RMA will not be annotated."
  }
  output {
    File out_stdout = stdout()
    File out_compress_output_files = "${in_compress_output_files}"
  }
}