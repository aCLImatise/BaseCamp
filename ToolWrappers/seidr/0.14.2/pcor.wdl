version 1.0

task Pcor {
  input {
    Boolean? arg_expression_table
    Boolean? _arg_file_containing_gene_names
    Boolean? report_absolute_values
    Boolean? deprecated_transform_data
    Boolean? no_scale
    Boolean? arg_file_containing_gene_names_ofinterest
    File? arg_pcorscorestsvoutput_file
    Boolean? arg_verbosity_level
    Boolean? force_overwrite_output
    String exists
  }
  command <<<
    pcor \
      ~{exists} \
      ~{if (arg_expression_table) then "-i" else ""} \
      ~{if (_arg_file_containing_gene_names) then "-g" else ""} \
      ~{if (report_absolute_values) then "-a" else ""} \
      ~{if (deprecated_transform_data) then "-s" else ""} \
      ~{if (no_scale) then "--no-scale" else ""} \
      ~{if (arg_file_containing_gene_names_ofinterest) then "-t" else ""} \
      ~{if (arg_pcorscorestsvoutput_file) then "-o" else ""} \
      ~{if (arg_verbosity_level) then "-v" else ""} \
      ~{if (force_overwrite_output) then "-f" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565"
  }
  parameter_meta {
    arg_expression_table: "[ --infile ] arg                   The expression table (without headers)"
    _arg_file_containing_gene_names: "[ --genes ] arg                    File containing gene names"
    report_absolute_values: "[ --absolute ]                     Report absolute values"
    deprecated_transform_data: "[ --scale ]                        (deprecated) Transform data to z-scores"
    no_scale: "Do not transform data to z-scores"
    arg_file_containing_gene_names_ofinterest: "[ --targets ] arg                  File containing gene names of genes of\\ninterest. The network will only be\\ncalculated using these as the sources\\nof potential connections."
    arg_pcorscorestsvoutput_file: "[ --outfile ] arg (=pcor_scores.tsv)\\nOutput file path"
    arg_verbosity_level: "[ --verbosity ] arg (=3)           Verbosity level (lower is less verbose)"
    force_overwrite_output: "[ --force ]                        Force overwrite if output already"
    exists: "-V [ --version ]                      Print the program version"
  }
  output {
    File out_stdout = stdout()
    File out_arg_pcorscorestsvoutput_file = "${in_arg_pcorscorestsvoutput_file}"
  }
}