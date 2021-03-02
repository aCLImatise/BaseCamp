version 1.0

task OpopulatedatasetsfromVAMPSdownload {
  input {
    String? tax_on
    File? output_file_name
  }
  command <<<
    o_populate_datasets_from_VAMPS_download \
      ~{if defined(tax_on) then ("--taxon " +  '"' + tax_on + '"') else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    tax_on: "Isolate a particular taxon"
    output_file_name: "Output file name\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}