version 1.0

task Tts {
  input {
    Boolean? string_template_execute
    Boolean? http_header
    Boolean? debug
    Boolean? debug_tokens
    Boolean? new_cache
    Boolean? new_capture_warnings
    Boolean? new_safe
    Boolean? new_stack
    Boolean? new_strict
    Boolean? new_verbose_errors
    Boolean? new_warn_ids
    Boolean? new_monolith
    Boolean? new_add_args
    Boolean? new_cache_dir
    Boolean? new_delimiters
    Boolean? new_header
    Boolean? new_include_paths
    Boolean? new_io_layer
    Boolean? new_pre_chomp
    Boolean? new_post_chomp
    Boolean? compile_param
    Boolean? compile_id
    Boolean? compile_map_keys
    Boolean? compile_chk_mt
    String you
    String have
    String to
    String either
    String var_28
    String a
    File file
    String name
    String or
    String var_33
  }
  command <<<
    tts \
      ~{you} \
      ~{have} \
      ~{to} \
      ~{either} \
      ~{var_28} \
      ~{a} \
      ~{file} \
      ~{name} \
      ~{or} \
      ~{var_33} \
      ~{true="-e" false="" string_template_execute} \
      ~{true="--http-header" false="" http_header} \
      ~{true="--debug" false="" debug} \
      ~{true="--debug-tokens" false="" debug_tokens} \
      ~{true="--new-cache" false="" new_cache} \
      ~{true="--new-capture-warnings" false="" new_capture_warnings} \
      ~{true="--new-safe" false="" new_safe} \
      ~{true="--new-stack" false="" new_stack} \
      ~{true="--new-strict" false="" new_strict} \
      ~{true="--new-verbose_errors" false="" new_verbose_errors} \
      ~{true="--new-warn-ids" false="" new_warn_ids} \
      ~{true="--new-monolith" false="" new_monolith} \
      ~{true="--new-add-args" false="" new_add_args} \
      ~{true="--new-cache-dir" false="" new_cache_dir} \
      ~{true="--new-delimiters" false="" new_delimiters} \
      ~{true="--new-header" false="" new_header} \
      ~{true="--new-include-paths" false="" new_include_paths} \
      ~{true="--new-iolayer" false="" new_io_layer} \
      ~{true="--new-pre-chomp" false="" new_pre_chomp} \
      ~{true="--new-post-chomp" false="" new_post_chomp} \
      ~{true="--compile-param" false="" compile_param} \
      ~{true="--compile-id" false="" compile_id} \
      ~{true="--compile-map-keys" false="" compile_map_keys} \
      ~{true="--compile-chkmt" false="" compile_chk_mt}
  >>>
  parameter_meta {
    string_template_execute: "String template to execute"
    http_header: "Print a HTTP Header?"
    debug: "Integer. Sets the debuggging level"
    debug_tokens: "Enable token debugging?"
    new_cache: "Flag."
    new_capture_warnings: "Flag."
    new_safe: "Flag."
    new_stack: "Flag."
    new_strict: "Flag."
    new_verbose_errors: "Flag."
    new_warn_ids: "Flag."
    new_monolith: "Flag."
    new_add_args: "Add global arguments"
    new_cache_dir: "Path to cache directory"
    new_delimiters: "Sets the delimiters"
    new_header: "Injects a default code onto the template"
    new_include_paths: "List of include paths"
    new_io_layer: "Perl I/O layer"
    new_pre_chomp: "Global pre-chomp"
    new_post_chomp: "Global post-chomp"
    compile_param: "List of parameters to pass to compiler"
    compile_id: "Set the template cache id manually"
    compile_map_keys: "Flag. Enable map keys interface?"
    compile_chk_mt: "Flag. Check modification time of the template?"
    you: ""
    have: ""
    to: ""
    either: ""
    var_28: ""
    a: ""
    file: ""
    name: ""
    or: ""
    var_33: ""
  }
}