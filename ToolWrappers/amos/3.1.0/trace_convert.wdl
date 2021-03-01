version 1.0

task TraceConvert {
  input {
    String? format_input_defaults
    String? format_output_default
    File? fof_n
    String? passed
    File? error
    String? failed
    File? name
    Boolean? subtract_background
    Boolean? normalise
    Int? scale
    File? compress
    Int? abi_data
    String convert_trace
    String? var_13
    String? var_14
    String in
    String out
  }
  command <<<
    trace_convert \
      ~{convert_trace} \
      ~{var_13} \
      ~{var_14} \
      ~{in} \
      ~{out} \
      ~{if defined(format_input_defaults) then ("-in_format " +  '"' + format_input_defaults + '"') else ""} \
      ~{if defined(format_output_default) then ("-out_format " +  '"' + format_output_default + '"') else ""} \
      ~{if defined(fof_n) then ("-fofn " +  '"' + fof_n + '"') else ""} \
      ~{if defined(passed) then ("-passed " +  '"' + passed + '"') else ""} \
      ~{if defined(error) then ("-error " +  '"' + error + '"') else ""} \
      ~{if defined(failed) then ("-failed " +  '"' + failed + '"') else ""} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""} \
      ~{if (subtract_background) then "-subtract_background" else ""} \
      ~{if (normalise) then "-normalise" else ""} \
      ~{if defined(scale) then ("-scale " +  '"' + scale + '"') else ""} \
      ~{if defined(compress) then ("-compress " +  '"' + compress + '"') else ""} \
      ~{if defined(abi_data) then ("-abi_data " +  '"' + abi_data + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    format_input_defaults: "Format for input (defaults to any"
    format_output_default: "Format for output (default ztr)"
    fof_n: "Get \\\"Input Output\\\" names from a fofn"
    passed: "Output fofn of passed names"
    error: "Redirect stderr to file stderrfn (default is stderr)"
    failed: "Output fofn of failed names"
    name: "ID line for experiment file output"
    subtract_background: "Subtracts the trace background"
    normalise: "Normalises peak heights"
    scale: "Downscales peaks to 0-range"
    compress: "Compress file output (not if stdout)"
    abi_data: "ABI DATA lanes to copy: eg 9,10,11,12"
    convert_trace: ""
    var_13: ""
    var_14: ""
    in: ""
    out: ""
  }
  output {
    File out_stdout = stdout()
    File out_name = "${in_name}"
    File out_compress = "${in_compress}"
  }
}