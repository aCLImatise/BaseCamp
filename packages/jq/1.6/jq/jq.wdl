version 1.0

task Jq {
  input {
    Boolean? compact_instead_prettyprinted
    Boolean? use_null_single
    Boolean? set_status_code
    Boolean? slurp_inputs_apply
    Boolean? output_raw_strings
    Boolean? read_raw_strings
    Boolean? colorize_json
    Boolean? monochrome_colorize_json
    Boolean? sort_keys_objects
    Boolean? tab
    String? arg
    String? arg_json
    String? slurp_file
    String? raw_file
    Boolean? args
    Boolean? json_args
    String jq_filter
    File? file_dot_dot_dot
  }
  command <<<
    jq \
      ~{jq_filter} \
      ~{file_dot_dot_dot} \
      ~{if (compact_instead_prettyprinted) then "-c" else ""} \
      ~{if (use_null_single) then "-n" else ""} \
      ~{if (set_status_code) then "-e" else ""} \
      ~{if (slurp_inputs_apply) then "-s" else ""} \
      ~{if (output_raw_strings) then "-r" else ""} \
      ~{if (read_raw_strings) then "-R" else ""} \
      ~{if (colorize_json) then "-C" else ""} \
      ~{if (monochrome_colorize_json) then "-M" else ""} \
      ~{if (sort_keys_objects) then "-S" else ""} \
      ~{if (tab) then "--tab" else ""} \
      ~{if defined(arg) then ("--arg " +  '"' + arg + '"') else ""} \
      ~{if defined(arg_json) then ("--argjson " +  '"' + arg_json + '"') else ""} \
      ~{if defined(slurp_file) then ("--slurpfile " +  '"' + slurp_file + '"') else ""} \
      ~{if defined(raw_file) then ("--rawfile " +  '"' + raw_file + '"') else ""} \
      ~{if (args) then "--args" else ""} \
      ~{if (json_args) then "--jsonargs" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/jq:1.6"
  }
  parameter_meta {
    compact_instead_prettyprinted: "compact instead of pretty-printed output;"
    use_null_single: "use `null` as the single input value;"
    set_status_code: "set the exit status code based on the output;"
    slurp_inputs_apply: "read (slurp) all inputs into an array; apply filter to it;"
    output_raw_strings: "output raw strings, not JSON texts;"
    read_raw_strings: "read raw strings, not JSON texts;"
    colorize_json: "colorize JSON;"
    monochrome_colorize_json: "monochrome (don't colorize JSON);"
    sort_keys_objects: "sort keys of objects on output;"
    tab: "use tabs for indentation;"
    arg: "v        set variable $a to value <v>;"
    arg_json: "v    set variable $a to JSON value <v>;"
    slurp_file: "f  set variable $a to an array of JSON texts read from <f>;"
    raw_file: "f    set variable $a to a string consisting of the contents of <f>;"
    args: "remaining arguments are string arguments, not files;"
    json_args: "remaining arguments are JSON arguments, not files;"
    jq_filter: ""
    file_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}