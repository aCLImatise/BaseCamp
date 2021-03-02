class: CommandLineTool
id: tts.cwl
inputs:
- id: in_string_template_execute
  doc: String template to execute
  type: boolean?
  inputBinding:
    prefix: -e
- id: in_http_header
  doc: Print a HTTP Header?
  type: boolean?
  inputBinding:
    prefix: --http-header
- id: in_debug
  doc: Integer. Sets the debuggging level
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_debug_tokens
  doc: Enable token debugging?
  type: boolean?
  inputBinding:
    prefix: --debug-tokens
- id: in_new_cache
  doc: Flag.
  type: boolean?
  inputBinding:
    prefix: --new-cache
- id: in_new_capture_warnings
  doc: Flag.
  type: boolean?
  inputBinding:
    prefix: --new-capture-warnings
- id: in_new_safe
  doc: Flag.
  type: boolean?
  inputBinding:
    prefix: --new-safe
- id: in_new_stack
  doc: Flag.
  type: boolean?
  inputBinding:
    prefix: --new-stack
- id: in_new_strict
  doc: Flag.
  type: boolean?
  inputBinding:
    prefix: --new-strict
- id: in_new_verbose_errors
  doc: Flag.
  type: boolean?
  inputBinding:
    prefix: --new-verbose_errors
- id: in_new_warn_ids
  doc: Flag.
  type: boolean?
  inputBinding:
    prefix: --new-warn-ids
- id: in_new_monolith
  doc: Flag.
  type: boolean?
  inputBinding:
    prefix: --new-monolith
- id: in_new_add_args
  doc: Add global arguments
  type: boolean?
  inputBinding:
    prefix: --new-add-args
- id: in_new_cache_dir
  doc: Path to cache directory
  type: boolean?
  inputBinding:
    prefix: --new-cache-dir
- id: in_new_delimiters
  doc: Sets the delimiters
  type: boolean?
  inputBinding:
    prefix: --new-delimiters
- id: in_new_header
  doc: Injects a default code onto the template
  type: boolean?
  inputBinding:
    prefix: --new-header
- id: in_new_include_paths
  doc: List of include paths
  type: boolean?
  inputBinding:
    prefix: --new-include-paths
- id: in_new_io_layer
  doc: Perl I/O layer
  type: boolean?
  inputBinding:
    prefix: --new-iolayer
- id: in_new_pre_chomp
  doc: Global pre-chomp
  type: boolean?
  inputBinding:
    prefix: --new-pre-chomp
- id: in_new_post_chomp
  doc: Global post-chomp
  type: boolean?
  inputBinding:
    prefix: --new-post-chomp
- id: in_compile_param
  doc: List of parameters to pass to compiler
  type: boolean?
  inputBinding:
    prefix: --compile-param
- id: in_compile_id
  doc: Set the template cache id manually
  type: boolean?
  inputBinding:
    prefix: --compile-id
- id: in_compile_map_keys
  doc: Flag. Enable map keys interface?
  type: boolean?
  inputBinding:
    prefix: --compile-map-keys
- id: in_compile_chk_mt
  doc: Flag. Check modification time of the template?
  type: boolean?
  inputBinding:
    prefix: --compile-chkmt
- id: in_you
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_have
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_to
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_either
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_pass
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 6
- id: in_name
  doc: ''
  type: string
  inputBinding:
    position: 7
- id: in_or
  doc: ''
  type: string
  inputBinding:
    position: 8
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- tts
