version 1.0

task Loadintocountingpy {
  input {
    Int? k
    Boolean? info
  }
  command <<<
    load_into_counting_py \
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