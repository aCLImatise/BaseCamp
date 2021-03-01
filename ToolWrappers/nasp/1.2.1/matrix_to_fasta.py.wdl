version 1.0

task MatrixToFastapy {
  input {
    File? input_matrix
    String? output_prefix
    Int? filter_frequency
  }
  command <<<
    matrix_to_fasta_py \
      ~{if defined(input_matrix) then ("--input_matrix " +  '"' + input_matrix + '"') else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(filter_frequency) then ("--filter_frequency " +  '"' + filter_frequency + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_matrix: "/path/to/NASP_matrix [REQUIRED]"
    output_prefix: "prefix for outfiles [REQUIRED]"
    filter_frequency: "filter out missing data if missing is greater than or\\nequal to given frequency, defaults to 1\\n"
  }
  output {
    File out_stdout = stdout()
  }
}