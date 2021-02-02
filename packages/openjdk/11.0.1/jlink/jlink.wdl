version 1.0

task Jlink {
  input {
    String? add_modules
    Boolean? bind_services
    Int? compress
    String? disable_plugin
    String? endian
    Boolean? ignore_signing_information
    String? launcher
    String? limit_modules
    File? module_path
    Boolean? no_header_files
    Boolean? no_man_pages
    File? location_output_path
    File? post_process_path
    String? resources_last_sorter
    Boolean? strip_debug
    Boolean? suggest_providers
    Boolean? verbose
  }
  command <<<
    jlink \
      ~{if defined(add_modules) then ("--add-modules " +  '"' + add_modules + '"') else ""} \
      ~{if (bind_services) then "--bind-services" else ""} \
      ~{if defined(compress) then ("--compress " +  '"' + compress + '"') else ""} \
      ~{if defined(disable_plugin) then ("--disable-plugin " +  '"' + disable_plugin + '"') else ""} \
      ~{if defined(endian) then ("--endian " +  '"' + endian + '"') else ""} \
      ~{if (ignore_signing_information) then "--ignore-signing-information" else ""} \
      ~{if defined(launcher) then ("--launcher " +  '"' + launcher + '"') else ""} \
      ~{if defined(limit_modules) then ("--limit-modules " +  '"' + limit_modules + '"') else ""} \
      ~{if defined(module_path) then ("--module-path " +  '"' + module_path + '"') else ""} \
      ~{if (no_header_files) then "--no-header-files" else ""} \
      ~{if (no_man_pages) then "--no-man-pages" else ""} \
      ~{if defined(location_output_path) then ("--output " +  '"' + location_output_path + '"') else ""} \
      ~{if defined(post_process_path) then ("--post-process-path " +  '"' + post_process_path + '"') else ""} \
      ~{if defined(resources_last_sorter) then ("--resources-last-sorter " +  '"' + resources_last_sorter + '"') else ""} \
      ~{if (strip_debug) then "--strip-debug" else ""} \
      ~{if (suggest_providers) then "--suggest-providers" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    add_modules: "[,<mod>...]    Root modules to resolve"
    bind_services: "Link in service provider modules and\\ntheir dependences"
    compress: "Enable compression of resources:\\nLevel 0: No compression\\nLevel 1: Constant string sharing\\nLevel 2: ZIP"
    disable_plugin: "Disable the plugin mentioned"
    endian: "Byte order of generated jimage\\n(default:native)"
    ignore_signing_information: "Suppress a fatal error when signed\\nmodular JARs are linked in the image.\\nThe signature related files of the\\nsigned modular JARs are not copied to\\nthe runtime image."
    launcher: "=<module>[/<mainclass>]\\nAdd a launcher command of the given\\nname for the module and the main class\\nif specified"
    limit_modules: "[,<mod>...]  Limit the universe of observable"
    module_path: "Module path"
    no_header_files: "Exclude include header files"
    no_man_pages: "Exclude man pages"
    location_output_path: "Location of output path"
    post_process_path: "Post process an existing image"
    resources_last_sorter: "The last plugin allowed to sort"
    strip_debug: "Strip debug information"
    suggest_providers: "[<name>,...]  Suggest providers that implement the\\ngiven service types from the module path"
    verbose: "Enable verbose tracing"
  }
  output {
    File out_stdout = stdout()
    File out_location_output_path = "${in_location_output_path}"
  }
}