version 1.0

task MatrixToFasta.py {
  input {
    String? input_matrix
    String? output_prefix
    String? filter_frequency
  }
  command <<<
    matrix_to_fasta.py \
      ~{if defined(input_matrix) then ("--input_matrix " +  '"' + input_matrix + '"') else ""} \
      ~{if defined(output_prefix) then ("--output_prefix " +  '"' + output_prefix + '"') else ""} \
      ~{if defined(filter_frequency) then ("--filter_frequency " +  '"' + filter_frequency + '"') else ""}
  >>>
  parameter_meta {
    input_matrix: "/path/to/NASP_matrix [REQUIRED]"
    output_prefix: "prefix for outfiles [REQUIRED]"
    filter_frequency: "filter out missing data if missing is greater than or equal to given frequency, defaults to 1"
  }
}