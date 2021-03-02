version 1.0

task Perl {
  input {
    Boolean? specify_record_separator
    Boolean? autosplit_mode_p
    Boolean? enables_unicode_features
    Boolean? check_syntax_runs
    Boolean? run_program_debugger
    Boolean? set_debugging_flags
    String? one_line_program
    String? e_enables_optional
    Boolean? do_do_sitelibsitecustomizepl
    Boolean? pattern_split_pattern
    Boolean? edit_files_place
    Boolean? i_directory
    Boolean? enable_line_ending
    Boolean? assume_loop_program
    Boolean? assume_loop_line
    Boolean? enable_rudimentary_parsing
    Boolean? look_programfile_using
    Boolean? enable_tainting_warnings
    Boolean? enable_tainting_checks
    Boolean? dump_core_parsing
    Boolean? allow_unsafe_operations
    Boolean? print_version_patchlevel
    Boolean? print_configuration_summary
    Boolean? enable_many_warnings
    Boolean? enable_all_warnings
    Boolean? ignore_text_cd
    Boolean? disable_all_warnings
    String? switches
  }
  command <<<
    perl \
      ~{switches} \
      ~{if (specify_record_separator) then "-0" else ""} \
      ~{if (autosplit_mode_p) then "-a" else ""} \
      ~{if (enables_unicode_features) then "-C" else ""} \
      ~{if (check_syntax_runs) then "-c" else ""} \
      ~{if (run_program_debugger) then "-d" else ""} \
      ~{if (set_debugging_flags) then "-D" else ""} \
      ~{if defined(one_line_program) then ("-e " +  '"' + one_line_program + '"') else ""} \
      ~{if defined(e_enables_optional) then ("-E " +  '"' + e_enables_optional + '"') else ""} \
      ~{if (do_do_sitelibsitecustomizepl) then "-f" else ""} \
      ~{if (pattern_split_pattern) then "-F" else ""} \
      ~{if (edit_files_place) then "-i" else ""} \
      ~{if (i_directory) then "-Idirectory" else ""} \
      ~{if (enable_line_ending) then "-l" else ""} \
      ~{if (assume_loop_program) then "-n" else ""} \
      ~{if (assume_loop_line) then "-p" else ""} \
      ~{if (enable_rudimentary_parsing) then "-s" else ""} \
      ~{if (look_programfile_using) then "-S" else ""} \
      ~{if (enable_tainting_warnings) then "-t" else ""} \
      ~{if (enable_tainting_checks) then "-T" else ""} \
      ~{if (dump_core_parsing) then "-u" else ""} \
      ~{if (allow_unsafe_operations) then "-U" else ""} \
      ~{if (print_version_patchlevel) then "-v" else ""} \
      ~{if (print_configuration_summary) then "-V" else ""} \
      ~{if (enable_many_warnings) then "-w" else ""} \
      ~{if (enable_all_warnings) then "-W" else ""} \
      ~{if (ignore_text_cd) then "-x" else ""} \
      ~{if (disable_all_warnings) then "-X" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    specify_record_separator: "[octal]         specify record separator (\\0, if no argument)"
    autosplit_mode_p: "autosplit mode with -n or -p (splits $_ into @F)"
    enables_unicode_features: "[number/list]   enables the listed Unicode features"
    check_syntax_runs: "check syntax only (runs BEGIN and CHECK blocks)"
    run_program_debugger: "[:debugger]     run program under debugger"
    set_debugging_flags: "[number/list]   set debugging flags (argument is a bit mask or alphabets)"
    one_line_program: "one line of program (several -e's allowed, omit programfile)"
    e_enables_optional: "like -e, but enables all optional features"
    do_do_sitelibsitecustomizepl: "don't do $sitelib/sitecustomize.pl at startup"
    pattern_split_pattern: "/pattern/       split() pattern for -a switch (//'s are optional)"
    edit_files_place: "[extension]     edit <> files in place (makes backup if extension supplied)"
    i_directory: "specify @INC/#include directory (several -I's allowed)"
    enable_line_ending: "[octal]         enable line ending processing, specifies line terminator"
    assume_loop_program: "assume \\\"while (<>) { ... }\\\" loop around program"
    assume_loop_line: "assume loop like -n but print line also, like sed"
    enable_rudimentary_parsing: "enable rudimentary parsing for switches after programfile"
    look_programfile_using: "look for programfile using PATH environment variable"
    enable_tainting_warnings: "enable tainting warnings"
    enable_tainting_checks: "enable tainting checks"
    dump_core_parsing: "dump core after parsing program"
    allow_unsafe_operations: "allow unsafe operations"
    print_version_patchlevel: "print version, patchlevel and license"
    print_configuration_summary: "[:variable]     print configuration summary (or a single Config.pm variable)"
    enable_many_warnings: "enable many useful warnings"
    enable_all_warnings: "enable all warnings"
    ignore_text_cd: "[directory]     ignore text before #!perl line (optionally cd to directory)"
    disable_all_warnings: "disable all warnings"
    switches: ""
  }
  output {
    File out_stdout = stdout()
  }
}