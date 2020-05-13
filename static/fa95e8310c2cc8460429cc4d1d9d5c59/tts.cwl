class: CommandLineTool
id: tts.cwl
inputs:
- id: e
  doc: String template to execute
  type: boolean
  inputBinding:
    prefix: -e
- id: http_header
  doc: Print a HTTP Header?
  type: boolean
  inputBinding:
    prefix: --http-header
- id: debug
  doc: Integer. Sets the debuggging level
  type: boolean
  inputBinding:
    prefix: --debug
- id: debug_tokens
  doc: Enable token debugging?
  type: boolean
  inputBinding:
    prefix: --debug-tokens
- id: new_cache
  doc: Flag.
  type: boolean
  inputBinding:
    prefix: --new-cache
- id: new_capture_warnings
  doc: Flag.
  type: boolean
  inputBinding:
    prefix: --new-capture-warnings
- id: new_safe
  doc: Flag.
  type: boolean
  inputBinding:
    prefix: --new-safe
- id: new_stack
  doc: Flag.
  type: boolean
  inputBinding:
    prefix: --new-stack
- id: new_strict
  doc: Flag.
  type: boolean
  inputBinding:
    prefix: --new-strict
- id: new_verbose_errors
  doc: Flag.
  type: boolean
  inputBinding:
    prefix: --new-verbose_errors
- id: new_warn_ids
  doc: Flag.
  type: boolean
  inputBinding:
    prefix: --new-warn-ids
- id: new_monolith
  doc: Flag.
  type: boolean
  inputBinding:
    prefix: --new-monolith
- id: new_add_args
  doc: Add global arguments
  type: boolean
  inputBinding:
    prefix: --new-add-args
- id: new_cache_dir
  doc: Path to cache directory
  type: boolean
  inputBinding:
    prefix: --new-cache-dir
- id: new_delimiters
  doc: Sets the delimiters
  type: boolean
  inputBinding:
    prefix: --new-delimiters
- id: new_header
  doc: Injects a default code onto the template
  type: boolean
  inputBinding:
    prefix: --new-header
- id: new_include_paths
  doc: List of include paths
  type: boolean
  inputBinding:
    prefix: --new-include-paths
- id: new_io_layer
  doc: Perl I/O layer
  type: boolean
  inputBinding:
    prefix: --new-iolayer
- id: new_pre_chomp
  doc: Global pre-chomp
  type: boolean
  inputBinding:
    prefix: --new-pre-chomp
- id: new_post_chomp
  doc: Global post-chomp
  type: boolean
  inputBinding:
    prefix: --new-post-chomp
- id: compile_param
  doc: List of parameters to pass to compiler
  type: boolean
  inputBinding:
    prefix: --compile-param
- id: compile_id
  doc: Set the template cache id manually
  type: boolean
  inputBinding:
    prefix: --compile-id
- id: compile_map_keys
  doc: Flag. Enable map keys interface?
  type: boolean
  inputBinding:
    prefix: --compile-map-keys
- id: compile_chk_mt
  doc: Flag. Check modification time of the template?
  type: boolean
  inputBinding:
    prefix: --compile-chkmt
outputs: []
cwlVersion: v1.1
baseCommand:
- tts
