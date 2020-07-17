version 1.0

task DnaseToJSON.pyOutput {
  input {
    String? w
    Boolean? i
    Boolean? a
    String dnase_to_json_do_tpy
    String regions
    String reads
    String var_output
  }
  command <<<
    dnase_to_JSON.py output \
      ~{dnase_to_json_do_tpy} \
      ~{regions} \
      ~{reads} \
      ~{var_output} \
      ~{if defined(w) then ("-w " +  '"' + w + '"') else ""} \
      ~{true="-i" false="" i} \
      ~{true="-A" false="" a}
  >>>
  parameter_meta {
    w: ""
    i: ""
    a: ""
    dnase_to_json_do_tpy: ""
    regions: ""
    reads: ""
    var_output: ""
  }
}