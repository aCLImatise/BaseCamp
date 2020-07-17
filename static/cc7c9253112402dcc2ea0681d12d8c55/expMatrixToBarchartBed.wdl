version 1.0

task ExpMatrixToBarchartBed {
  input {
    String? auto_sql
    String? group_order_file
    Boolean? use_mean
    Boolean? verbose
  }
  command <<<
    expMatrixToBarchartBed \
      ~{if defined(auto_sql) then ("--autoSql " +  '"' + auto_sql + '"') else ""} \
      ~{if defined(group_order_file) then ("--groupOrderFile " +  '"' + group_order_file + '"') else ""} \
      ~{true="--useMean" false="" use_mean} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    auto_sql: "Optional autoSql description of extra fields in the input bed."
    group_order_file: "Optional file to define the group order, list the groups in a single column in the order desired. The default ordering is alphabetical."
    use_mean: "Calculate the group values using mean rather than median."
    verbose: "Show runtime messages."
  }
}