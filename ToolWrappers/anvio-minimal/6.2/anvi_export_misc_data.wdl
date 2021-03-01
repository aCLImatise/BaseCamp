version 1.0

task Anviexportmiscdata {
  input {
    String? pan_or_profile_db
    String? target_data_table
    String? target_data_group
    File? output_file
  }
  command <<<
    anvi_export_misc_data \
      ~{if defined(pan_or_profile_db) then ("--pan-or-profile-db " +  '"' + pan_or_profile_db + '"') else ""} \
      ~{if defined(target_data_table) then ("--target-data-table " +  '"' + target_data_table + '"') else ""} \
      ~{if defined(target_data_group) then ("--target-data-group " +  '"' + target_data_group + '"') else ""} \
      ~{if defined(output_file) then ("--output-file " +  '"' + output_file + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    pan_or_profile_db: "Anvi'o pan or profile database (and even genes\\ndatabase in appropriate contexts)."
    target_data_table: "The target table is the table you are interested in\\naccessing. Currently it can be 'items','layers', or\\n'layer_orders'. Please see most up-to-date online\\ndocumentation for more information."
    target_data_group: "Data group to focus. Anvi'o misc data tables support\\nassociating a set of data keys with a data group. If\\nyou have no idea what this is, then probably you don't\\nneed it, and anvi'o will take care of you. Note: this\\nflag is IRRELEVANT if you are working with additional\\norder data tables."
    output_file: "File path to store results.\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}