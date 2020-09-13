version 1.0

task Meryl {
  input {
    Boolean? _compute_parameters
    Boolean? _build_table
    Boolean? _scan_table
    Boolean? __operations
    Boolean? _dump_table
    String? personality
    String? global
  }
  command <<<
    meryl \
      ~{personality} \
      ~{global} \
      ~{if (_compute_parameters) then "-P" else ""} \
      ~{if (_build_table) then "-B" else ""} \
      ~{if (_scan_table) then "-S" else ""} \
      ~{if (__operations) then "-M" else ""} \
      ~{if (_dump_table) then "-D" else ""}
  >>>
  parameter_meta {
    _compute_parameters: "-- compute parameters"
    _build_table: "-- build table"
    _scan_table: "-- scan table"
    __operations: "-- \\\"math\\\" operations"
    _dump_table: "-- dump table"
    personality: ""
    global: ""
  }
  output {
    File out_stdout = stdout()
  }
}