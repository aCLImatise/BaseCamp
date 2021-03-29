version 1.0

task Tomsimilarity {
  input {
    Boolean? arg_expression_table
    Boolean? _arg_file_containing_gene_names
    Boolean? var_2
    Boolean? report_absolute_values
    Boolean? deprecated_transform_data
    Boolean? transform_data_zscores
    Boolean? arg_soft_threshold_apply
    Boolean? arg_maximum_power
    Boolean? arg_soft_threshold_r
    Boolean? arg_signed_unsigned
    Boolean? arg_file_containing_gene_names_ofinterest
    File? arg_tomscorestsvoutput_file
    Boolean? arg_verbosity_level
    Boolean? force_overwrite_output
    String signed_hybrid
    String exists
  }
  command <<<
    tomsimilarity \
      ~{signed_hybrid} \
      ~{exists} \
      ~{if (arg_expression_table) then "-i" else ""} \
      ~{if (_arg_file_containing_gene_names) then "-g" else ""} \
      ~{if (var_2) then "-m" else ""} \
      ~{if (report_absolute_values) then "-a" else ""} \
      ~{if (deprecated_transform_data) then "-s" else ""} \
      ~{if (transform_data_zscores) then "-S" else ""} \
      ~{if (arg_soft_threshold_apply) then "-b" else ""} \
      ~{if (arg_maximum_power) then "-M" else ""} \
      ~{if (arg_soft_threshold_r) then "-c" else ""} \
      ~{if (arg_signed_unsigned) then "-T" else ""} \
      ~{if (arg_file_containing_gene_names_ofinterest) then "-t" else ""} \
      ~{if (arg_tomscorestsvoutput_file) then "-o" else ""} \
      ~{if (arg_verbosity_level) then "-v" else ""} \
      ~{if (force_overwrite_output) then "-f" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565"
  }
  parameter_meta {
    arg_expression_table: "[ --infile ] arg                   The expression table (without headers)"
    _arg_file_containing_gene_names: "[ --genes ] arg                    File containing gene names"
    var_2: "[ --method ] arg (=pearson)        Correlation method: [bicor, pearson]"
    report_absolute_values: "[ --absolute ]                     Report absolute values"
    deprecated_transform_data: "[ --scale ]                        (deprecated) Transform data to z-scores"
    transform_data_zscores: "[ --no-scale ]                     Do not transform data to z-scores"
    arg_soft_threshold_apply: "[ --sft ] arg (=0)                 Soft threshold to apply (0 for\\nautodetection)"
    arg_maximum_power: "[ --max-power ] arg (=30)          Maximum power to check for SFT test in\\nauto detection mode"
    arg_soft_threshold_r: "[ --sft-cutoff ] arg (=0.8)        Soft threshold R^2 cutoff in\\nautodetection mode"
    arg_signed_unsigned: "[ --tom-type ] arg (=signed)       TOM type: unsigned, signed,"
    arg_file_containing_gene_names_ofinterest: "[ --targets ] arg                  File containing gene names of genes of\\ninterest. The network will only be\\ncalculated using these as the sources\\nof potential connections."
    arg_tomscorestsvoutput_file: "[ --outfile ] arg (=tom_scores.tsv)\\nOutput file path"
    arg_verbosity_level: "[ --verbosity ] arg (=3)           Verbosity level (lower is less verbose)"
    force_overwrite_output: "[ --force ]                        Force overwrite if output already"
    signed_hybrid: "Common Options:"
    exists: "-V [ --version ]                      Print the program version"
  }
  output {
    File out_stdout = stdout()
    File out_arg_tomscorestsvoutput_file = "${in_arg_tomscorestsvoutput_file}"
  }
}