version 1.0

task AnviShowMiscData {
  input {
    String? pan_or_profile_db
    String? target_data_table
    String? target_data_group
  }
  command <<<
    anvi-show-misc-data \
      ~{if defined(pan_or_profile_db) then ("--pan-or-profile-db " +  '"' + pan_or_profile_db + '"') else ""} \
      ~{if defined(target_data_table) then ("--target-data-table " +  '"' + target_data_table + '"') else ""} \
      ~{if defined(target_data_group) then ("--target-data-group " +  '"' + target_data_group + '"') else ""}
  >>>
  parameter_meta {
    pan_or_profile_db: "Anvi'o pan or profile database (and even genes database in appropriate contexts)."
    target_data_table: "The target table is the table you are interested in accessing. Currently it can be 'items','layers', or 'layer_orders'. Please see most up-to-date online documentation for more information."
    target_data_group: "Data group to focus. Anvi'o misc data tables support associating a set of data keys with a data group. If you have no idea what this is, then probably you don't need it, and anvi'o will take care of you. Note: this flag is IRRELEVANT if you are working with additional order data tables."
  }
}