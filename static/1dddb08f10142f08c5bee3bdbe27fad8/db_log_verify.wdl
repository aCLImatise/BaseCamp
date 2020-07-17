version 1.0

task DbLogVerify {
  input {
    Boolean? nc_vv
    String? var_1
    String? var_2
    String? environment
    String? home
    String? for
    Int? internal
    String? use
  }
  command <<<
    db_log_verify \
      ~{environment} \
      ~{home} \
      ~{for} \
      ~{internal} \
      ~{use} \
      ~{true="-NcvV" false="" nc_vv} \
      ~{if defined(var_1) then ("-h " +  '"' + var_1 + '"') else ""} \
      ~{if defined(var_2) then ("-H " +  '"' + var_2 + '"') else ""}
  >>>
  parameter_meta {
    nc_vv: ""
    var_1: ""
    var_2: ""
    environment: ""
    home: ""
    for: ""
    internal: ""
    use: ""
  }
}