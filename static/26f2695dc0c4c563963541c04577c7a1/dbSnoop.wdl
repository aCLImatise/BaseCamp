version 1.0

task DbSnoop {
  input {
    Boolean? unsplit
    Boolean? no_number_commas
    Boolean? just_schema
    String? skip_table
    String? profile
    String database
    String var_output
  }
  command <<<
    dbSnoop \
      ~{database} \
      ~{var_output} \
      ~{true="-unsplit" false="" unsplit} \
      ~{true="-noNumberCommas" false="" no_number_commas} \
      ~{true="-justSchema" false="" just_schema} \
      ~{if defined(skip_table) then ("-skipTable " +  '"' + skip_table + '"') else ""} \
      ~{if defined(profile) then ("-profile " +  '"' + profile + '"') else ""}
  >>>
  parameter_meta {
    unsplit: "- if set will merge together tables split by chromosome"
    no_number_commas: "- if set will leave out commas in big numbers"
    just_schema: "- only schema parts, no contents"
    skip_table: "- if set skip a given table name"
    profile: "- use profile for connection settings, default = 'db'"
    database: ""
    var_output: ""
  }
}