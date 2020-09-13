version 1.0

task Pyrad {
  input {
    File? input_file_sample
    Int? perform_stepwise_parts
    File? input_file_dtest
    Boolean? creates_new_input_file
    Boolean? creates_new_empty_file
  }
  command <<<
    pyrad \
      ~{if defined(input_file_sample) then ("-p " +  '"' + input_file_sample + '"') else ""} \
      ~{if defined(perform_stepwise_parts) then ("-s " +  '"' + perform_stepwise_parts + '"') else ""} \
      ~{if defined(input_file_dtest) then ("-d " +  '"' + input_file_dtest + '"') else ""} \
      ~{if (creates_new_input_file) then "-n" else ""} \
      ~{if (creates_new_empty_file) then "-D" else ""}
  >>>
  parameter_meta {
    input_file_sample: "input file for within sample filtering and clustering"
    perform_stepwise_parts: "perform step-wise parts of within analysis\\n1 = barcode sorting\\n2 = filter/edit raw sequences\\n3 = within-sample clustering\\n4 = estimate pi and e\\n5 = consensus calling\\n6 = cluster consensus\\n7 = align & create output files"
    input_file_dtest: "input file for D-test of introgression,\\ncan iterate over multiple samples"
    creates_new_input_file: "creates a new empty input params.txt file"
    creates_new_empty_file: "creates a new empty Dtest input file"
  }
  output {
    File out_stdout = stdout()
  }
}