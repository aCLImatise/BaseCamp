version 1.0

task TbprofilerGetDrFreqpy {
  input {
    String? var_meta
    String json
  }
  command <<<
    tbprofiler_get_dr_freq_py \
      ~{json} \
      ~{if defined(var_meta) then ("--meta " +  '"' + var_meta + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_meta: ""
    json: "NGS Platform"
  }
  output {
    File out_stdout = stdout()
  }
}