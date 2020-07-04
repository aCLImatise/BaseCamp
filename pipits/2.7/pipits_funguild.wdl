version 1.0

task PipitsFunguild.py {
  input {
    String? input_otu_table
    String? output_funguild_formatted
    String converts
    String var_3
    String tables
    Int into
    String fun_guild
    String formatted
    String var_8
    String table_dot
  }
  command <<<
    pipits_funguild.py \
      ~{converts} \
      ~{var_3} \
      ~{tables} \
      ~{into} \
      ~{fun_guild} \
      ~{formatted} \
      ~{var_8} \
      ~{table_dot} \
      ~{if defined(input_otu_table) then ("-i " +  '"' + input_otu_table + '"') else ""} \
      ~{if defined(output_funguild_formatted) then ("-o " +  '"' + output_funguild_formatted + '"') else ""}
  >>>
  parameter_meta {
    input_otu_table: "[REQUIRED] Input OTU table generated from pipits_process."
    output_funguild_formatted: "[REQUIRED] Output FUNGuild formatted OTU table."
    converts: ""
    var_3: ""
    tables: ""
    into: ""
    fun_guild: ""
    formatted: ""
    var_8: ""
    table_dot: ""
  }
}