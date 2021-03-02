version 1.0

task MergeTsvspy {
  input {
    String? join_type_outer
    String? join_field_read
    String? output_tsv_mergetsvstsv
    Boolean? fill_na_values
    String input_t_svs
  }
  command <<<
    merge_tsvs_py \
      ~{input_t_svs} \
      ~{if defined(join_type_outer) then ("-j " +  '"' + join_type_outer + '"') else ""} \
      ~{if defined(join_field_read) then ("-f " +  '"' + join_field_read + '"') else ""} \
      ~{if defined(output_tsv_mergetsvstsv) then ("-o " +  '"' + output_tsv_mergetsvstsv + '"') else ""} \
      ~{if (fill_na_values) then "-z" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0"
  }
  parameter_meta {
    join_type_outer: "Join type (outer)."
    join_field_read: "Join on this field (Read)."
    output_tsv_mergetsvstsv: "Output tsv (merge_tsvs.tsv)."
    fill_na_values: "Fill NA values with zero."
    input_t_svs: "Input tab separated files."
  }
  output {
    File out_stdout = stdout()
  }
}