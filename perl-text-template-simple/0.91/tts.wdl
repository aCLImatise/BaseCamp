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
    String pass
    String a
    File file
    String name
    String or
  }
  command <<<
    tts \
      ~{you} \
      ~{have} \
      ~{to} \
      ~{either} \
      ~{pass} \
      ~{a} \
      ~{file} \
      ~{name} \
      ~{or} \
      ~{if (string_template_execute) then "-e" else ""} \
      ~{if (http_header) then "--http-header" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (debug_tokens) then "--debug-tokens" else ""} \
      ~{if (new_cache) then "--new-cache" else ""} \
      ~{if (new_capture_warnings) then "--new-capture-warnings" else ""} \
      ~{if (new_safe) then "--new-safe" else ""} \
      ~{if (new_stack) then "--new-stack" else ""} \
      ~{if (new_strict) then "--new-strict" else ""} \
      ~{if (new_verbose_errors) then "--new-verbose_errors" else ""} \
      ~{if (new_warn_ids) then "--new-warn-ids" else ""} \
      ~{if (new_monolith) then "--new-monolith" else ""} \
      ~{if (new_add_args) then "--new-add-args" else ""} \
      ~{if (new_cache_dir) then "--new-cache-dir" else ""} \
      ~{if (new_delimiters) then "--new-delimiters" else ""} \
      ~{if (new_header) then "--new-header" else ""} \
      ~{if (new_include_paths) then "--new-include-paths" else ""} \
      ~{if (new_io_layer) then "--new-iolayer" else ""} \
      ~{if (new_pre_chomp) then "--new-pre-chomp" else ""} \
      ~{if (new_post_chomp) then "--new-post-chomp" else ""} \
      ~{if (compile_param) then "--compile-param" else ""} \
      ~{if (compile_id) then "--compile-id" else ""} \
      ~{if (compile_map_keys) then "--compile-map-keys" else ""} \
      ~{if (compile_chk_mt) then "--compile-chkmt" else ""}
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
    pass: ""
    a: ""
    file: ""
    name: ""
    or: ""
  }
  output {
    File out_stdout = stdout()
  }
}