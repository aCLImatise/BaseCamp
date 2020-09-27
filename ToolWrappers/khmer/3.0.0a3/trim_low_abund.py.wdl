version 1.0

task Trimlowabundpy {
  input {
    Int? k
    Boolean? info
  }
  command <<<
    trim_low_abund_py \
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