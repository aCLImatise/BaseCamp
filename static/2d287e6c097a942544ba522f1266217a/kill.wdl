version 1.0

task Kill {
  input {
    String? signal
    String? list
    String? table
  }
  command <<<
    kill \
      ~{if defined(signal) then ("--signal " +  '"' + signal + '"') else ""} \
      ~{if defined(list) then ("--list " +  '"' + list + '"') else ""} \
      ~{if defined(table) then ("--table " +  '"' + table + '"') else ""}
  >>>
  parameter_meta {
    signal: "specify the name or number of the signal to be sent"
    list: "signal names, or convert signal names to/from numbers"
    table: "a table of signal information"
  }
}