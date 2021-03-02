version 1.0

task FastaMerge {
  input {
    String? location_index_log
    String? base_name_output
    String? optional_list_process
  }
  command <<<
    fasta_merge \
      ~{if defined(location_index_log) then ("-d " +  '"' + location_index_log + '"') else ""} \
      ~{if defined(base_name_output) then ("-o " +  '"' + base_name_output + '"') else ""} \
      ~{if defined(optional_list_process) then ("-i " +  '"' + optional_list_process + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/maker:3.01.03--pl526hb8757ab_0"
  }
  parameter_meta {
    location_index_log: "location of the MAKER datastore index log."
    base_name_output: "base name for the output files."
    optional_list_process: "optional list of files to process along with or instead of the\\ndatastore.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}