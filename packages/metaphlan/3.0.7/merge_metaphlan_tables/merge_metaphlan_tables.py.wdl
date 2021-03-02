version 1.0

task MergeMetaphlanTablespy {
  input {
    File? name_output_file
    String input_dot_txt
  }
  command <<<
    merge_metaphlan_tables_py \
      ~{input_dot_txt} \
      ~{if defined(name_output_file) then ("-o " +  '"' + name_output_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metaphlan:3.0.7--pyh7b7c402_0"
  }
  parameter_meta {
    name_output_file: "Name of output file in which joined tables are saved"
    input_dot_txt: "One or more tab-delimited text tables to join"
  }
  output {
    File out_stdout = stdout()
    File out_name_output_file = "${in_name_output_file}"
  }
}