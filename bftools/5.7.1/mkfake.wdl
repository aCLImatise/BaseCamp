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
      ~{true="-plates" false="" plates} \
      ~{true="-runs" false="" runs} \
      ~{true="-rows" false="" rows} \
      ~{true="-columns" false="" columns} \
      ~{true="-fields" false="" fields} \
      ~{true="-debug" false="" debug}
  >>>
  parameter_meta {
    plates: ": number of plates (default: 1)"
    runs: ": number of plate runs (acquisitions) (default: 1)"
    rows: ": number of rows in a plate (default: 1)"
    columns: ": number of columns in a plate (default: 1)"
    fields: ": number of fields in a plate (default: 1)"
    debug: ": turn on debugging output"
  }
}