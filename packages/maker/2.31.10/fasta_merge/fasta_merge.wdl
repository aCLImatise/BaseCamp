version 1.0

task FastaMerge {
  input {
    String? location_maker_datastore
    String? base_name_output
    String? optional_list_process
  }
  command <<<
    fasta_merge \
      ~{if defined(location_maker_datastore) then ("-d " +  '"' + location_maker_datastore + '"') else ""} \
      ~{if defined(base_name_output) then ("-o " +  '"' + base_name_output + '"') else ""} \
      ~{if defined(optional_list_process) then ("-i " +  '"' + optional_list_process + '"') else ""}
  >>>
  parameter_meta {
    location_maker_datastore: "location of the MAKER datastore index log."
    base_name_output: "base name for the output files."
    optional_list_process: "optional list of files to process along with or instead of the\\ndatastore.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}