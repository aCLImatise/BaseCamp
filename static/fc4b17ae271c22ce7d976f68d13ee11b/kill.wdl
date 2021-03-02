version 1.0

task Kill {
  input {
    Int? signal
    Boolean? list
    Boolean? table
  }
  command <<<
    kill \
      ~{if defined(signal) then ("--signal " +  '"' + signal + '"') else ""} \
      ~{if (list) then "--list" else ""} \
      ~{if (table) then "--table" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    signal: "specify the name or number of the signal to be sent"
    list: "list signal names, or convert signal names to/from numbers"
    table: "print a table of signal information"
  }
  output {
    File out_stdout = stdout()
  }
}