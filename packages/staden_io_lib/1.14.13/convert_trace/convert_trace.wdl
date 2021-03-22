version 1.0

task ConvertTrace {
  input {
    String? format_input_defaults
    String? format_output_default
    File? fof_n
    String? passed
    File? error
    String? failed
    File? name
    Boolean? subtract_background
    String? subtract
    Boolean? normalise
    Boolean? min_normalise
    Int? scale
    File? compress
    Int? abi_data
    Boolean? signed
    Boolean? none_g
    String? var_16
    String? var_17
    String in
    String out
  }
  command <<<
    convert_trace \
      ~{var_16} \
      ~{var_17} \
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
      ~{if defined(subtract) then ("-subtract " +  '"' + subtract + '"') else ""} \
      ~{if (normalise) then "-normalise" else ""} \
      ~{if (min_normalise) then "-min_normalise" else ""} \
      ~{if defined(scale) then ("-scale " +  '"' + scale + '"') else ""} \
      ~{if defined(compress) then ("-compress " +  '"' + compress + '"') else ""} \
      ~{if defined(abi_data) then ("-abi_data " +  '"' + abi_data + '"') else ""} \
      ~{if (signed) then "-signed" else ""} \
      ~{if (none_g) then "-noneg" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/staden_io_lib:1.14.13--h9dace67_0"
  }
  parameter_meta {
    format_input_defaults: "Format for input (defaults to any"
    format_output_default: "Format for output (default ztr)"
    fof_n: "Get \\\"Input Output\\\" names from a fofn"
    passed: "Output fofn of passed names"
    error: "Redirect stderr to file \\\"errs\\\""
    failed: "Output fofn of failed names"
    name: "ID line for experiment file output"
    subtract_background: "Auto-subtracts the trace background"
    subtract: "Subtracts a specified background amount"
    normalise: "Normalises peak heights"
    min_normalise: "Minimum trace amp for normalising"
    scale: "Downscales peaks to 0-range"
    compress: "Compress file output (not if stdout)"
    abi_data: "ABI DATA lanes to copy: eg 9,10,11,12"
    signed: "Apply global shift to avoid negative values"
    none_g: "Shift each channel independently to avoid -ve"
    var_16: ""
    var_17: ""
    in: ""
    out: ""
  }
  output {
    File out_stdout = stdout()
    File out_name = "${in_name}"
    File out_compress = "${in_compress}"
  }
}