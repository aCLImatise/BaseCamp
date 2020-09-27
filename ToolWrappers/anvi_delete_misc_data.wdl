version 1.0

task Anvideletemiscdata {
  input {
    String? pan_or_profile_db
    String? target_data_table
    String? keys_to_remove
    String? groups_to_remove
    Boolean? list_available_keys
    Boolean? just_do_it
  }
  command <<<
    anvi_delete_misc_data \
      ~{if defined(pan_or_profile_db) then ("--pan-or-profile-db " +  '"' + pan_or_profile_db + '"') else ""} \
      ~{if defined(target_data_table) then ("--target-data-table " +  '"' + target_data_table + '"') else ""} \
      ~{if defined(keys_to_remove) then ("--keys-to-remove " +  '"' + keys_to_remove + '"') else ""} \
      ~{if defined(groups_to_remove) then ("--groups-to-remove " +  '"' + groups_to_remove + '"') else ""} \
      ~{if (list_available_keys) then "--list-available-keys" else ""} \
      ~{if (just_do_it) then "--just-do-it" else ""}
  >>>
  parameter_meta {
    pan_or_profile_db: "Anvi'o pan or profile database (and even genes\\ndatabase in appropriate contexts)."
    target_data_table: "The target table is the table you are interested in\\naccessing. Currently it can be 'items','layers', or\\n'layer_orders'. Please see most up-to-date online\\ndocumentation for more information."
    keys_to_remove: "A comma-separated list of data keys to remove from the\\ndatabase. If you do not use this parameter, anvi'o\\nwill simply remove everything from the target data\\ntable immediately. Please note that you should not use\\nthis parameter together with `--groups-to-remove` in a\\nsingle command."
    groups_to_remove: "A comma-separated list of data groups to remove from\\nthe database. If you do not use this parameter, anvi'o\\nwill simply remove everything from the target data\\ntable immediately. Please note that you should not use\\nthis parameter together with `--keys-to-remove` in a\\nsingle command."
    list_available_keys: "Using this flag will list available data keys in the\\ntarget data table and quit without doing anything\\nelse."
    just_do_it: "Don't bother me with questions or warnings, just do\\nit.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}