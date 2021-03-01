version 1.0

task RgiJsontab {
  input {
    File? a_file
    File? out_file
    String? verbose
  }
  command <<<
    rgi_jsontab \
      ~{if defined(a_file) then ("--afile " +  '"' + a_file + '"') else ""} \
      ~{if defined(out_file) then ("--out_file " +  '"' + out_file + '"') else ""} \
      ~{if defined(verbose) then ("--verbose " +  '"' + verbose + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    a_file: "must be a json file generated from RGI in JSON or gzip\\nformat e.g out.json, out.json.gz"
    out_file: "Output Tab-delimited file (default=dataSummary)"
    verbose: "include help menu. Options are OFF or ON (default =\\nOFF for no help)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_a_file = "${in_a_file}"
    File out_out_file = "${in_out_file}"
  }
}