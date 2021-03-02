version 1.0

task Swiftlink {
  input {
    String? var_output
    String? trace_prefix
    Float? floatfloat__penetrancefloatfloatfloatdefault
    Boolean? gpu
    File? d
    File? m
    File? p
  }
  command <<<
    swiftlink \
      ~{if defined(var_output) then ("--output " +  '"' + var_output + '"') else ""} \
      ~{if defined(trace_prefix) then ("--traceprefix " +  '"' + trace_prefix + '"') else ""} \
      ~{if defined(floatfloat__penetrancefloatfloatfloatdefault) then ("-k " +  '"' + floatfloat__penetrancefloatfloatfloatdefault + '"') else ""} \
      ~{if (gpu) then "--gpu" else ""} \
      ~{if defined(d) then ("-d " +  '"' + d + '"') else ""} \
      ~{if defined(m) then ("-m " +  '"' + m + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    var_output: "(default = 'swiftlink.out')"
    trace_prefix: "(default = 'trace')"
    floatfloat__penetrancefloatfloatfloatdefault: ",FLOAT,FLOAT --penetrance=FLOAT,FLOAT,FLOAT(default = 0.00,0.00,1.00)"
    gpu: "[UNAVAILABLE, COMPILED WITHOUT CUDA]"
    d: ""
    m: ""
    p: ""
  }
  output {
    File out_stdout = stdout()
  }
}