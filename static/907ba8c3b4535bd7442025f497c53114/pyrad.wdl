version 1.0

task Pyrad {
  input {
    String? input_file_sample
    String? perform_stepwise_parts
    String? input_file_dtest
    Boolean? creates_new_empty_input_file
    Boolean? creates_new_empty_dtest_file
  }
  command <<<
    pyrad \
      ~{if defined(input_file_sample) then ("-p " +  '"' + input_file_sample + '"') else ""} \
      ~{if defined(perform_stepwise_parts) then ("-s " +  '"' + perform_stepwise_parts + '"') else ""} \
      ~{if defined(input_file_dtest) then ("-d " +  '"' + input_file_dtest + '"') else ""} \
      ~{true="-n" false="" creates_new_empty_input_file} \
      ~{true="-D" false="" creates_new_empty_dtest_file}
  >>>
  parameter_meta {
    input_file_sample: "input file for within sample filtering and clustering"
    perform_stepwise_parts: "perform step-wise parts of within analysis 1 = barcode sorting 2 = filter/edit raw sequences 3 = within-sample clustering 4 = estimate pi and e 5 = consensus calling 6 = cluster consensus 7 = align & create output files"
    input_file_dtest: "input file for D-test of introgression, can iterate over multiple samples"
    creates_new_empty_input_file: "creates a new empty input params.txt file"
    creates_new_empty_dtest_file: "creates a new empty Dtest input file"
  }
}