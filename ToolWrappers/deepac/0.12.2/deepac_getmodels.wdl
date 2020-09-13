version 1.0

task DeepacGetmodels {
  input {
    String? debug_tf
    Boolean? debug_no_eager
    Boolean? v
    String deep_ac
  }
  command <<<
    deepac getmodels \
      ~{deep_ac} \
      ~{if defined(debug_tf) then ("--debug-tf " +  '"' + debug_tf + '"') else ""} \
      ~{if (debug_no_eager) then "--debug-no-eager" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    debug_tf: ""
    debug_no_eager: ""
    v: ""
    deep_ac: ""
  }
  output {
    File out_stdout = stdout()
  }
}