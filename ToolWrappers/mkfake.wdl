version 1.0

task Mkfake {
  input {
    Boolean? plates
    Boolean? runs
    Boolean? rows
    Boolean? columns
    Boolean? fields
    Boolean? debug
  }
  command <<<
    mkfake \
      ~{if (plates) then "-plates" else ""} \
      ~{if (runs) then "-runs" else ""} \
      ~{if (rows) then "-rows" else ""} \
      ~{if (columns) then "-columns" else ""} \
      ~{if (fields) then "-fields" else ""} \
      ~{if (debug) then "-debug" else ""}
  >>>
  parameter_meta {
    plates: ": number of plates (default: 1)"
    runs: ": number of plate runs (acquisitions) (default: 1)"
    rows: ": number of rows in a plate (default: 1)"
    columns: ": number of columns in a plate (default: 1)"
    fields: ": number of fields in a plate (default: 1)"
    debug: ": turn on debugging output"
  }
  output {
    File out_stdout = stdout()
  }
}