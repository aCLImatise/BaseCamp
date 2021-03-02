version 1.0

task DeepacliveThresholds {
  input {
    String? debug_tf
    Boolean? debug_no_eager
    Boolean? v
    String deep_ac_live
  }
  command <<<
    deepac_live thresholds_ \
      ~{deep_ac_live} \
      ~{if defined(debug_tf) then ("--debug-tf " +  '"' + debug_tf + '"') else ""} \
      ~{if (debug_no_eager) then "--debug-no-eager" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/deepaclive:0.3.2--py_0"
  }
  parameter_meta {
    debug_tf: ""
    debug_no_eager: ""
    v: ""
    deep_ac_live: ""
  }
  output {
    File out_stdout = stdout()
  }
}