version 1.0

task Tpage {
  input {
    String? define
    Boolean? interpolate
    Boolean? any_case
    Boolean? pre_chomp
    Boolean? post_chomp
    Boolean? trim
    Boolean? eval_perl
    Boolean? load_perl
    Boolean? absolute
    Boolean? relative
    Directory? include_path
    String? pre_process
    String? post_process
    String? process
    String? wrapper
    String? default
    String? error
    String? debug
    String? start_tag
    String? end_tag
    String? tag_style
    String? plugin_base
    File? compile_ext
    Directory? compile_dir
    Int? perl_five_lib
    String? template_module
    Int? while_max
    String? files
  }
  command <<<
    tpage \
      ~{files} \
      ~{if defined(define) then ("--define " +  '"' + define + '"') else ""} \
      ~{if (interpolate) then "--interpolate" else ""} \
      ~{if (any_case) then "--anycase" else ""} \
      ~{if (pre_chomp) then "--pre_chomp" else ""} \
      ~{if (post_chomp) then "--post_chomp" else ""} \
      ~{if (trim) then "--trim" else ""} \
      ~{if (eval_perl) then "--eval_perl" else ""} \
      ~{if (load_perl) then "--load_perl" else ""} \
      ~{if (absolute) then "--absolute" else ""} \
      ~{if (relative) then "--relative" else ""} \
      ~{if defined(include_path) then ("--include_path " +  '"' + include_path + '"') else ""} \
      ~{if defined(pre_process) then ("--pre_process " +  '"' + pre_process + '"') else ""} \
      ~{if defined(post_process) then ("--post_process " +  '"' + post_process + '"') else ""} \
      ~{if defined(process) then ("--process " +  '"' + process + '"') else ""} \
      ~{if defined(wrapper) then ("--wrapper " +  '"' + wrapper + '"') else ""} \
      ~{if defined(default) then ("--default " +  '"' + default + '"') else ""} \
      ~{if defined(error) then ("--error " +  '"' + error + '"') else ""} \
      ~{if defined(debug) then ("--debug " +  '"' + debug + '"') else ""} \
      ~{if defined(start_tag) then ("--start_tag " +  '"' + start_tag + '"') else ""} \
      ~{if defined(end_tag) then ("--end_tag " +  '"' + end_tag + '"') else ""} \
      ~{if defined(tag_style) then ("--tag_style " +  '"' + tag_style + '"') else ""} \
      ~{if defined(plugin_base) then ("--plugin_base " +  '"' + plugin_base + '"') else ""} \
      ~{if defined(compile_ext) then ("--compile_ext " +  '"' + compile_ext + '"') else ""} \
      ~{if defined(compile_dir) then ("--compile_dir " +  '"' + compile_dir + '"') else ""} \
      ~{if defined(perl_five_lib) then ("--perl5lib " +  '"' + perl_five_lib + '"') else ""} \
      ~{if defined(template_module) then ("--template_module " +  '"' + template_module + '"') else ""} \
      ~{if defined(while_max) then ("--while_max " +  '"' + while_max + '"') else ""}
  >>>
  parameter_meta {
    define: "=value       Define template variable"
    interpolate: "Interpolate '$var' references in text"
    any_case: "Accept directive keywords in any case."
    pre_chomp: "Chomp leading whitespace"
    post_chomp: "Chomp trailing whitespace"
    trim: "Trim blank lines around template blocks"
    eval_perl: "Evaluate [% PERL %] ... [% END %] code blocks"
    load_perl: "Load regular Perl modules via USE directive"
    absolute: "Allow ABSOLUTE directories (enabled by default)"
    relative: "Allow RELATIVE directories (enabled by default)"
    include_path: "Add directory to INCLUDE_PATH"
    pre_process: "Process TEMPLATE before each main template"
    post_process: "Process TEMPLATE after each main template"
    process: "Process TEMPLATE instead of main template"
    wrapper: "Process TEMPLATE wrapper around main template"
    default: "Use TEMPLATE as default"
    error: "Use TEMPLATE to handle errors"
    debug: "Set TT DEBUG option to STRING"
    start_tag: "STRING defines start of directive tag"
    end_tag: "STRING defined end of directive tag"
    tag_style: "Use pre-defined tag STYLE"
    plugin_base: "Base PACKAGE for plugins"
    compile_ext: "File extension for compiled template files"
    compile_dir: "Directory for compiled template files"
    perl_five_lib: "Specify additional Perl library directories"
    template_module: "Specify alternate Template module"
    while_max: "Change '$Template::Directive::WHILE_MAX' default"
    files: ""
  }
  output {
    File out_stdout = stdout()
  }
}