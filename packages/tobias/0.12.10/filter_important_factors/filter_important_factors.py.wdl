version 1.0

task FilterImportantFactorspy {
  input {
    File? in
    String? filter
    File? output_file
  }
  command <<<
    filter_important_factors_py \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(filter) then ("-filter " +  '"' + filter + '"') else ""} \
      ~{if defined(output_file) then ("-o " +  '"' + output_file + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tobias:0.12.10--py37h97743b1_0"
  }
  parameter_meta {
    in: "Input file"
    filter: "Filter"
    output_file: "Output file"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}