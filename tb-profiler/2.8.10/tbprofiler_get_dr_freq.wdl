version 1.0

task TbprofilerGetDrFreq.py {
  input {
    String? var_meta
    String json
  }
  command <<<
    tbprofiler_get_dr_freq.py \
      ~{json} \
      ~{if defined(var_meta) then ("--meta " +  '"' + var_meta + '"') else ""}
  >>>
  parameter_meta {
    var_meta: ""
    json: "NGS Platform"
  }
}