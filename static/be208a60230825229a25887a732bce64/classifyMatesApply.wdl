version 1.0

task ClassifyMatesApply {
  input {
    String? read_fragments_here
    Int? read_results_here
    Boolean? also_dump_results
    File? output_gatekeeper_edit
  }
  command <<<
    classifyMatesApply \
      ~{if defined(read_fragments_here) then ("-G " +  '"' + read_fragments_here + '"') else ""} \
      ~{if defined(read_results_here) then ("-r " +  '"' + read_results_here + '"') else ""} \
      ~{if (also_dump_results) then "-p" else ""} \
      ~{if defined(output_gatekeeper_edit) then ("-o " +  '"' + output_gatekeeper_edit + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    read_fragments_here: "Read fragments from here"
    read_results_here: "Read results from here; any number of -r options can be supplied"
    also_dump_results: "Also dump the results to stdout"
    output_gatekeeper_edit: "Output gatekeeper edit file"
  }
  output {
    File out_stdout = stdout()
    File out_output_gatekeeper_edit = "${in_output_gatekeeper_edit}"
  }
}