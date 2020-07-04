version 1.0

task AnviDeleteMiscData {
  input {
    String? pan_or_profile_db
    String? target_data_table
    String? keys_to_remove
    String? groups_to_remove
    Boolean? list_available_keys
    Boolean? just_do_it
  }
  command <<<
    anvi-delete-misc-data \
      ~{if defined(pan_or_profile_db) then ("--pan-or-profile-db " +  '"' + pan_or_profile_db + '"') else ""} \
      ~{if defined(target_data_table) then ("--target-data-table " +  '"' + target_data_table + '"') else ""} \
      ~{if defined(keys_to_remove) then ("--keys-to-remove " +  '"' + keys_to_remove + '"') else ""} \
      ~{if defined(groups_to_remove) then ("--groups-to-remove " +  '"' + groups_to_remove + '"') else ""} \
      ~{true="--list-available-keys" false="" list_available_keys} \
      ~{true="--just-do-it" false="" just_do_it}
  >>>
  parameter_meta {
    pan_or_profile_db: "Anvi'o pan or profile database (and even genes database in appropriate contexts)."
    target_data_table: "The target table is the table you are interested in accessing. Currently it can be 'items','layers', or 'layer_orders'. Please see most up-to-date online documentation for more information."
    keys_to_remove: "A comma-separated list of data keys to remove from the database. If you do not use this parameter, anvi'o will simply remove everything from the target data table immediately. Please note that you should not use this parameter together with `--groups-to-remove` in a single command."
    groups_to_remove: "A comma-separated list of data groups to remove from the database. If you do not use this parameter, anvi'o will simply remove everything from the target data table immediately. Please note that you should not use this parameter together with `--keys-to-remove` in a single command."
    list_available_keys: "Using this flag will list available data keys in the target data table and quit without doing anything else."
    just_do_it: "Don't bother me with questions or warnings, just do it."
  }
}