version 1.0

task Anoverence {
  input {
    Boolean? arg_expression_table
    Boolean? _arg_file_containing_gene_names
    Boolean? arg_file_containing_metadata
    Boolean? arg_weight_knockout
    Boolean? arg_file_containing_gene_names_ofinterest
    File? arg_anovascorestsvoutput_file
    Boolean? arg_verbosity_level
    Boolean? force_overwrite_output
    String exists
  }
  command <<<
    anoverence \
      ~{exists} \
      ~{if (arg_expression_table) then "-i" else ""} \
      ~{if (_arg_file_containing_gene_names) then "-g" else ""} \
      ~{if (arg_file_containing_metadata) then "-e" else ""} \
      ~{if (arg_weight_knockout) then "-w" else ""} \
      ~{if (arg_file_containing_gene_names_ofinterest) then "-t" else ""} \
      ~{if (arg_anovascorestsvoutput_file) then "-o" else ""} \
      ~{if (arg_verbosity_level) then "-v" else ""} \
      ~{if (force_overwrite_output) then "-f" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/seidr:0.14.2--mpi_mpich_h6f92565"
  }
  parameter_meta {
    arg_expression_table: "[ --infile ] arg                   The expression table (without headers)"
    _arg_file_containing_gene_names: "[ --genes ] arg                    File containing gene names"
    arg_file_containing_metadata: "[ --features ] arg                 File containing experiment metadata"
    arg_weight_knockout: "[ --weight ] arg (=1.0)            Weight for knockout genes"
    arg_file_containing_gene_names_ofinterest: "[ --targets ] arg                  File containing gene names of genes of\\ninterest. The network will only be\\ncalculated using these as the sources\\nof potential connections."
    arg_anovascorestsvoutput_file: "[ --outfile ] arg (=anova_scores.tsv)\\nOutput file path"
    arg_verbosity_level: "[ --verbosity ] arg (=3)           Verbosity level (lower is less verbose)"
    force_overwrite_output: "[ --force ]                        Force overwrite if output already"
    exists: "-V [ --version ]                      Print the program version"
  }
  output {
    File out_stdout = stdout()
    File out_arg_anovascorestsvoutput_file = "${in_arg_anovascorestsvoutput_file}"
  }
}