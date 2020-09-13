version 1.0

task Ttree {
  input {
    Boolean? _process_files
    Boolean? _recurse_recurse
    Boolean? _preserve_ownership
    Boolean? _nothing_nothing
    Boolean? _verbose_mode
    Directory? _srcdir_source
    Directory? _destdir_destination
    String? _cfgdir_location
    Directory? _libdir_directory
    File? _filefile_read
    Boolean? colour
    Boolean? summary
    String? ignore
    String? copy
    String? link
    String? accept
    String? depend
    File? depend_file
    Boolean? depend_debug
    String? suffix
    String? binmode
    String? encoding
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
    String? files
  }
  command <<<
    ttree \
      ~{files} \
      ~{if (_process_files) then "-a" else ""} \
      ~{if (_recurse_recurse) then "-r" else ""} \
      ~{if (_preserve_ownership) then "-p" else ""} \
      ~{if (_nothing_nothing) then "-n" else ""} \
      ~{if (_verbose_mode) then "-v" else ""} \
      ~{if defined(_srcdir_source) then ("-s " +  '"' + _srcdir_source + '"') else ""} \
      ~{if defined(_destdir_destination) then ("-d " +  '"' + _destdir_destination + '"') else ""} \
      ~{if defined(_cfgdir_location) then ("-c " +  '"' + _cfgdir_location + '"') else ""} \
      ~{if defined(_libdir_directory) then ("-l " +  '"' + _libdir_directory + '"') else ""} \
      ~{if defined(_filefile_read) then ("-f " +  '"' + _filefile_read + '"') else ""} \
      ~{if (colour) then "--colour" else ""} \
      ~{if (summary) then "--summary" else ""} \
      ~{if defined(ignore) then ("--ignore " +  '"' + ignore + '"') else ""} \
      ~{if defined(copy) then ("--copy " +  '"' + copy + '"') else ""} \
      ~{if defined(link) then ("--link " +  '"' + link + '"') else ""} \
      ~{if defined(accept) then ("--accept " +  '"' + accept + '"') else ""} \
      ~{if defined(depend) then ("--depend " +  '"' + depend + '"') else ""} \
      ~{if defined(depend_file) then ("--depend_file " +  '"' + depend_file + '"') else ""} \
      ~{if (depend_debug) then "--depend_debug" else ""} \
      ~{if defined(suffix) then ("--suffix " +  '"' + suffix + '"') else ""} \
      ~{if defined(binmode) then ("--binmode " +  '"' + binmode + '"') else ""} \
      ~{if defined(encoding) then ("--encoding " +  '"' + encoding + '"') else ""} \
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
      ~{if defined(template_module) then ("--template_module " +  '"' + template_module + '"') else ""}
  >>>
  parameter_meta {
    _process_files: "(--all)          Process all files, regardless of modification"
    _recurse_recurse: "(--recurse)      Recurse into sub-directories"
    _preserve_ownership: "(--preserve)     Preserve file ownership and permission"
    _nothing_nothing: "(--nothing)      Do nothing, just print summary (enables -v)"
    _verbose_mode: "(--verbose)      Verbose mode. Use twice for more verbosity: -v -v"
    _srcdir_source: "(--src=DIR)      Source directory"
    _destdir_destination: "(--dest=DIR)     Destination directory"
    _cfgdir_location: "(--cfg=DIR)      Location of configuration files"
    _libdir_directory: "(--lib=DIR)      Library directory (INCLUDE_PATH)  (multiple)"
    _filefile_read: "(--file=FILE)    Read named configuration file     (multiple)"
    colour: "/ --color       Enable colo(u)rful verbose output."
    summary: "Show processing summary."
    ignore: "Ignore files matching REGEX"
    copy: "Copy files matching REGEX"
    link: "Link files matching REGEX"
    accept: "Process only files matching REGEX"
    depend: "=bar,baz     Specify that 'foo' depends on 'bar' and 'baz'."
    depend_file: "Read file dependancies from FILE."
    depend_debug: "Enable debugging for dependencies"
    suffix: "=new         Change any '.old' suffix to '.new'"
    binmode: "Set binary mode of output files"
    encoding: "Set encoding of input files"
    define: "=value       Define template variable"
    interpolate: "Interpolate '$var' references in text"
    any_case: "Accept directive keywords in any case."
    pre_chomp: "Chomp leading whitespace"
    post_chomp: "Chomp trailing whitespace"
    trim: "Trim blank lines around template blocks"
    eval_perl: "Evaluate [% PERL %] ... [% END %] code blocks"
    load_perl: "Load regular Perl modules via USE directive"
    absolute: "Enable the ABSOLUTE option"
    relative: "Enable the RELATIVE option"
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
    files: ""
  }
  output {
    File out_stdout = stdout()
  }
}