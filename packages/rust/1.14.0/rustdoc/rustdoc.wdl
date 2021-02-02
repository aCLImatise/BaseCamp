version 1.0

task Rustdoc {
  input {
    Boolean? verbose
    Boolean? input_format
    Boolean? output_format
    File? where_place_output
    String? crate_name
    File? library_path
    Boolean? cfg
    File? extern
    File? plugin_path
    String? passes
    String? plugins
    Boolean? no_defaults
    Boolean? test
    String? test_args
    String? target
    File? markdown_css
    File? html_in_header
    File? html_before_content
    File? html_after_content
    String? markdown_playground_url
    Boolean? markdown_no_toc
    File? extend_css
    String? internal_debugging_options
    File? sys_root
  }
  command <<<
    rustdoc \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (input_format) then "--input-format" else ""} \
      ~{if (output_format) then "--output-format" else ""} \
      ~{if defined(where_place_output) then ("--output " +  '"' + where_place_output + '"') else ""} \
      ~{if defined(crate_name) then ("--crate-name " +  '"' + crate_name + '"') else ""} \
      ~{if defined(library_path) then ("--library-path " +  '"' + library_path + '"') else ""} \
      ~{if (cfg) then "--cfg" else ""} \
      ~{if defined(extern) then ("--extern " +  '"' + extern + '"') else ""} \
      ~{if defined(plugin_path) then ("--plugin-path " +  '"' + plugin_path + '"') else ""} \
      ~{if defined(passes) then ("--passes " +  '"' + passes + '"') else ""} \
      ~{if defined(plugins) then ("--plugins " +  '"' + plugins + '"') else ""} \
      ~{if (no_defaults) then "--no-defaults" else ""} \
      ~{if (test) then "--test" else ""} \
      ~{if defined(test_args) then ("--test-args " +  '"' + test_args + '"') else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(markdown_css) then ("--markdown-css " +  '"' + markdown_css + '"') else ""} \
      ~{if defined(html_in_header) then ("--html-in-header " +  '"' + html_in_header + '"') else ""} \
      ~{if defined(html_before_content) then ("--html-before-content " +  '"' + html_before_content + '"') else ""} \
      ~{if defined(html_after_content) then ("--html-after-content " +  '"' + html_after_content + '"') else ""} \
      ~{if defined(markdown_playground_url) then ("--markdown-playground-url " +  '"' + markdown_playground_url + '"') else ""} \
      ~{if (markdown_no_toc) then "--markdown-no-toc" else ""} \
      ~{if defined(extend_css) then ("--extend-css " +  '"' + extend_css + '"') else ""} \
      ~{if defined(internal_debugging_options) then ("-Z " +  '"' + internal_debugging_options + '"') else ""} \
      ~{if defined(sys_root) then ("--sysroot " +  '"' + sys_root + '"') else ""}
  >>>
  parameter_meta {
    verbose: "use verbose output"
    input_format: "[rust]\\nthe input type of the specified file"
    output_format: "[html]\\nthe output type to write"
    where_place_output: "where to place the output"
    crate_name: "specify the name of this crate"
    library_path: "directory to add to crate search path"
    cfg: "pass a --cfg to rustc"
    extern: "=PATH  pass an --extern to rustc"
    plugin_path: "directory to load plugins from"
    passes: "list of passes to also run, you might want to pass it\\nmultiple times; a value of `list` will print available\\npasses"
    plugins: "space separated list of plugins to also load"
    no_defaults: "don't run the default passes"
    test: "run code examples as tests"
    test_args: "arguments to pass to the test runner"
    target: "target triple to document"
    markdown_css: "CSS files to include via <link> in a rendered Markdown\\nfile"
    html_in_header: "files to include inline in the <head> section of a\\nrendered Markdown file or generated documentation"
    html_before_content: "files to include inline between <body> and the content\\nof a rendered Markdown file or generated documentation"
    html_after_content: "files to include inline between the content and\\n</body> of a rendered Markdown file or generated\\ndocumentation"
    markdown_playground_url: "URL to send code snippets to"
    markdown_no_toc: "don't include table of contents"
    extend_css: "to redefine some css rules with a given file to\\ngenerate doc with your own theme"
    internal_debugging_options: "internal and debugging options (only on nightly build)"
    sys_root: "Override the system root"
  }
  output {
    File out_stdout = stdout()
  }
}