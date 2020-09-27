version 1.0

task Filterabundsinglepy {
  input {
    Int? k
    Boolean? info
  }
  command <<<
    filter_abund_single_py \
      ~{if defined(k) then ("-k " +  '"' + k + '"') else ""} \
      ~{if (info) then "--info" else ""}
  >>>
  parameter_meta {
    k: ""
    info: ""
  }
  output {
    File out_stdout = stdout()
  }
}