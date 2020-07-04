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
    Boolean? enable_line_ending
    Boolean? assume_loop_script
    Boolean? assume_loop_n
    Boolean? r_library
    Boolean? enable_switch_parsing
    Boolean? look_script_using
    Boolean? turn_tainting_checks
    Boolean? verbose
    Boolean? turn_warnings_script
    Boolean? set_warning_verbose
    Boolean? strip_text_cd
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
      ~{true="-0" false="" specify_record_separator} \
      ~{true="-a" false="" autosplit_mode_n} \
      ~{true="-c" false="" check_syntax_only} \
      ~{true="-Cdirectory" false="" c_directory} \
      ~{true="--debug" false="" debug} \
      ~{true="-e" false="" s_allowed_omit} \
      ~{true="-Eex" false="" eex} \
      ~{true="-Fpattern" false="" f_pattern} \
      ~{true="-i" false="" edit_argv_files} \
      ~{true="-Idirectory" false="" i_directory} \
      ~{true="-l" false="" enable_line_ending} \
      ~{true="-n" false="" assume_loop_script} \
      ~{true="-p" false="" assume_loop_n} \
      ~{true="-rlibrary" false="" r_library} \
      ~{true="-s" false="" enable_switch_parsing} \
      ~{true="-S" false="" look_script_using} \
      ~{true="-T" false="" turn_tainting_checks} \
      ~{true="--verbose" false="" verbose} \
      ~{true="-w" false="" turn_warnings_script} \
      ~{true="-W" false="" set_warning_verbose} \
      ~{true="-x" false="" strip_text_cd} \
      ~{true="--copyright" false="" copyright} \
      ~{if defined(enable) then ("--enable " +  '"' + enable + '"') else ""} \
      ~{if defined(external_encoding) then ("--external-encoding " +  '"' + external_encoding + '"') else ""}
  >>>
  parameter_meta {
    specify_record_separator: "[octal]       specify record separator (\0, if no argument)"
    autosplit_mode_n: "autosplit mode with -n or -p (splits $_ into $F)"
    check_syntax_only: "check syntax only"
    c_directory: "cd to directory before executing your script"
    debug: "set debugging flags (set $DEBUG to true)"
    s_allowed_omit: "'command'    one line of script. Several -e's allowed. Omit [programfile]"
    eex: "[:in], --encoding=ex[:in] specify the default external and internal character encodings"
    f_pattern: "split() pattern for autosplit (-a)"
    edit_argv_files: "[extension]   edit ARGV files in place (make backup if extension supplied)"
    i_directory: "specify $LOAD_PATH directory (may be used more than once)"
    enable_line_ending: "enable line ending processing"
    assume_loop_script: "assume 'while gets(); ... end' loop around your script"
    assume_loop_n: "assume loop like -n but print line also like sed"
    r_library: "require the library before executing your script"
    enable_switch_parsing: "enable some switch parsing for switches after script name"
    look_script_using: "look for the script using PATH environment variable"
    turn_tainting_checks: "[level=1]     turn on tainting checks"
    verbose: "print version number, then turn on verbose mode"
    turn_warnings_script: "turn warnings on for your script"
    set_warning_verbose: "[level=2]     set warning level; 0=silence, 1=medium, 2=verbose"
    strip_text_cd: "[directory]   strip off text before #!ruby line and perhaps cd to directory"
    copyright: "print the copyright"
    enable: "[,...], --disable=feature[,...] enable or disable features"
    external_encoding: "specify the default external or internal character encoding"
    gems: "rubygems (default: enabled)"
    ruby_opt: "RUBYOPT environment variable (default: enabled)"
  }
}