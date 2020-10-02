class: CommandLineTool
id: rustdoc.cwl
inputs:
- id: in_verbose
  doc: use verbose output
  type: boolean
  inputBinding:
    prefix: --verbose
- id: in_input_format
  doc: "[rust]\nthe input type of the specified file"
  type: boolean
  inputBinding:
    prefix: --input-format
- id: in_output_format
  doc: "[html]\nthe output type to write"
  type: boolean
  inputBinding:
    prefix: --output-format
- id: in_output
  doc: where to place the output
  type: File
  inputBinding:
    prefix: --output
- id: in_crate_name
  doc: specify the name of this crate
  type: string
  inputBinding:
    prefix: --crate-name
- id: in_library_path
  doc: directory to add to crate search path
  type: File
  inputBinding:
    prefix: --library-path
- id: in_cfg
  doc: pass a --cfg to rustc
  type: boolean
  inputBinding:
    prefix: --cfg
- id: in_extern
  doc: =PATH  pass an --extern to rustc
  type: File
  inputBinding:
    prefix: --extern
- id: in_plugin_path
  doc: directory to load plugins from
  type: File
  inputBinding:
    prefix: --plugin-path
- id: in_passes
  doc: "list of passes to also run, you might want to pass it\nmultiple times; a value\
    \ of `list` will print available\npasses"
  type: string
  inputBinding:
    prefix: --passes
- id: in_plugins
  doc: space separated list of plugins to also load
  type: string
  inputBinding:
    prefix: --plugins
- id: in_no_defaults
  doc: don't run the default passes
  type: boolean
  inputBinding:
    prefix: --no-defaults
- id: in_test
  doc: run code examples as tests
  type: boolean
  inputBinding:
    prefix: --test
- id: in_test_args
  doc: arguments to pass to the test runner
  type: string
  inputBinding:
    prefix: --test-args
- id: in_target
  doc: target triple to document
  type: string
  inputBinding:
    prefix: --target
- id: in_markdown_css
  doc: "CSS files to include via <link> in a rendered Markdown\nfile"
  type: File
  inputBinding:
    prefix: --markdown-css
- id: in_html_in_header
  doc: "files to include inline in the <head> section of a\nrendered Markdown file\
    \ or generated documentation"
  type: File
  inputBinding:
    prefix: --html-in-header
- id: in_html_before_content
  doc: "files to include inline between <body> and the content\nof a rendered Markdown\
    \ file or generated documentation"
  type: File
  inputBinding:
    prefix: --html-before-content
- id: in_html_after_content
  doc: "files to include inline between the content and\n</body> of a rendered Markdown\
    \ file or generated\ndocumentation"
  type: File
  inputBinding:
    prefix: --html-after-content
- id: in_markdown_playground_url
  doc: URL to send code snippets to
  type: string
  inputBinding:
    prefix: --markdown-playground-url
- id: in_markdown_no_toc
  doc: don't include table of contents
  type: boolean
  inputBinding:
    prefix: --markdown-no-toc
- id: in_extend_css
  doc: "to redefine some css rules with a given file to\ngenerate doc with your own\
    \ theme"
  type: File
  inputBinding:
    prefix: --extend-css
- id: in_internal_debugging_options
  doc: internal and debugging options (only on nightly build)
  type: string
  inputBinding:
    prefix: -Z
- id: in_sys_root
  doc: Override the system root
  type: File
  inputBinding:
    prefix: --sysroot
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rustdoc
