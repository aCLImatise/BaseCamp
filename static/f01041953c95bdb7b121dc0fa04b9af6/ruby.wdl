version 1.0

task Ruby {
  input {
    Boolean? specify_record_separator
    Boolean? autosplit_mode_n
    Boolean? check_syntax_only
    Boolean? c_directory
    Boolean? debug
    Boolean? s_allowed_omit
    Boolean? eex
    Boolean? f_pattern
    Boolean? edit_argv_files
    Boolean? i_directory
    Boolean? enable_line_processing
    Boolean? assume_loop_script
    Boolean? assume_loop_n
    Boolean? r_library
    Boolean? enable_switch_parsing
    Boolean? look_script_using
    Boolean? turn_tainting_checks
    Boolean? verbose
    Boolean? turn_warnings_script
    Boolean? set_level_verbose
    Boolean? strip_text_ruby
    Boolean? copyright
    String? enable
    String? external_encoding
    String gems
    String ruby_opt
  }
  command <<<
    ruby \
      ~{gems} \
      ~{ruby_opt} \
      ~{if (specify_record_separator) then "-0" else ""} \
      ~{if (autosplit_mode_n) then "-a" else ""} \
      ~{if (check_syntax_only) then "-c" else ""} \
      ~{if (c_directory) then "-Cdirectory" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (s_allowed_omit) then "-e" else ""} \
      ~{if (eex) then "-Eex" else ""} \
      ~{if (f_pattern) then "-Fpattern" else ""} \
      ~{if (edit_argv_files) then "-i" else ""} \
      ~{if (i_directory) then "-Idirectory" else ""} \
      ~{if (enable_line_processing) then "-l" else ""} \
      ~{if (assume_loop_script) then "-n" else ""} \
      ~{if (assume_loop_n) then "-p" else ""} \
      ~{if (r_library) then "-rlibrary" else ""} \
      ~{if (enable_switch_parsing) then "-s" else ""} \
      ~{if (look_script_using) then "-S" else ""} \
      ~{if (turn_tainting_checks) then "-T" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (turn_warnings_script) then "-w" else ""} \
      ~{if (set_level_verbose) then "-W" else ""} \
      ~{if (strip_text_ruby) then "-x" else ""} \
      ~{if (copyright) then "--copyright" else ""} \
      ~{if defined(enable) then ("--enable " +  '"' + enable + '"') else ""} \
      ~{if defined(external_encoding) then ("--external-encoding " +  '"' + external_encoding + '"') else ""}
  >>>
  parameter_meta {
    specify_record_separator: "[octal]       specify record separator (\\0, if no argument)"
    autosplit_mode_n: "autosplit mode with -n or -p (splits $_ into $F)"
    check_syntax_only: "check syntax only"
    c_directory: "cd to directory before executing your script"
    debug: "set debugging flags (set $DEBUG to true)"
    s_allowed_omit: "'command'    one line of script. Several -e's allowed. Omit [programfile]"
    eex: "[:in], --encoding=ex[:in]\\nspecify the default external and internal character encodings"
    f_pattern: "split() pattern for autosplit (-a)"
    edit_argv_files: "[extension]   edit ARGV files in place (make backup if extension supplied)"
    i_directory: "specify $LOAD_PATH directory (may be used more than once)"
    enable_line_processing: "enable line ending processing"
    assume_loop_script: "assume 'while gets(); ... end' loop around your script"
    assume_loop_n: "assume loop like -n but print line also like sed"
    r_library: "require the library before executing your script"
    enable_switch_parsing: "enable some switch parsing for switches after script name"
    look_script_using: "look for the script using PATH environment variable"
    turn_tainting_checks: "[level=1]     turn on tainting checks"
    verbose: "print version number, then turn on verbose mode"
    turn_warnings_script: "turn warnings on for your script"
    set_level_verbose: "[level=2]     set warning level; 0=silence, 1=medium, 2=verbose"
    strip_text_ruby: "[directory]   strip off text before #!ruby line and perhaps cd to directory"
    copyright: "print the copyright"
    enable: "[,...], --disable=feature[,...]\\nenable or disable features"
    external_encoding: "specify the default external or internal character encoding"
    gems: "rubygems (default: enabled)"
    ruby_opt: "RUBYOPT environment variable (default: enabled)"
  }
  output {
    File out_stdout = stdout()
  }
}