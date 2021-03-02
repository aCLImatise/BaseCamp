version 1.0

task PipitsFunguildpy {
  input {
    File? input_otu_table
    String? output_funguild_formatted
    String converts
    String otu
    String tables
    String into
    String fun_guild
    String formatted
    String table_dot
  }
  command <<<
    pipits_funguild_py \
      ~{converts} \
      ~{otu} \
      ~{tables} \
      ~{into} \
      ~{fun_guild} \
      ~{formatted} \
      ~{table_dot} \
      ~{if defined(input_otu_table) then ("-i " +  '"' + input_otu_table + '"') else ""} \
      ~{if defined(output_funguild_formatted) then ("-o " +  '"' + output_funguild_formatted + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_otu_table: "[REQUIRED] Input OTU table generated from pipits_process."
    output_funguild_formatted: "[REQUIRED] Output FUNGuild formatted OTU table."
    converts: ""
    otu: ""
    tables: ""
    into: ""
    fun_guild: ""
    formatted: ""
    table_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}