version 1.0

task Perl5262 {
  input {
    Boolean? specify_record_separator
    Boolean? autosplit_mode_n
    Boolean? enables_listed_features
    Boolean? check_syntax_only
    Boolean? run_program_debugger
    Boolean? set_debugging_argument
    String? one_line_program
    String? e_enables_features
    Boolean? do_sitelibsitecustomizepl_startup
    Boolean? f_slash_pattern_slash
    Boolean? edit_files_place
    Boolean? i_directory
    Boolean? enable_line_ending
    Boolean? assume_loop_program
    Boolean? assume_loop_n
    Boolean? enable_rudimentary_parsing
    Boolean? look_using_variable
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
    perl5_26_2 \
      ~{switches} \
      ~{if (specify_record_separator) then "-0" else ""} \
      ~{if (autosplit_mode_n) then "-a" else ""} \
      ~{if (enables_listed_features) then "-C" else ""} \
      ~{if (check_syntax_only) then "-c" else ""} \
      ~{if (run_program_debugger) then "-d" else ""} \
      ~{if (set_debugging_argument) then "-D" else ""} \
      ~{if defined(one_line_program) then ("-e " +  '"' + one_line_program + '"') else ""} \
      ~{if defined(e_enables_features) then ("-E " +  '"' + e_enables_features + '"') else ""} \
      ~{if (do_sitelibsitecustomizepl_startup) then "-f" else ""} \
      ~{if (f_slash_pattern_slash) then "-F/pattern/" else ""} \
      ~{if (edit_files_place) then "-i" else ""} \
      ~{if (i_directory) then "-Idirectory" else ""} \
      ~{if (enable_line_ending) then "-l" else ""} \
      ~{if (assume_loop_program) then "-n" else ""} \
      ~{if (assume_loop_n) then "-p" else ""} \
      ~{if (enable_rudimentary_parsing) then "-s" else ""} \
      ~{if (look_using_variable) then "-S" else ""} \
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
  parameter_meta {
    specify_record_separator: "[octal]         specify record separator (\\0, if no argument)"
    autosplit_mode_n: "autosplit mode with -n or -p (splits $_ into @F)"
    enables_listed_features: "[number/list]   enables the listed Unicode features"
    check_syntax_only: "check syntax only (runs BEGIN and CHECK blocks)"
    run_program_debugger: "[:debugger]     run program under debugger"
    set_debugging_argument: "[number/list]   set debugging flags (argument is a bit mask or alphabets)"
    one_line_program: "one line of program (several -e's allowed, omit programfile)"
    e_enables_features: "like -e, but enables all optional features"
    do_sitelibsitecustomizepl_startup: "don't do $sitelib/sitecustomize.pl at startup"
    f_slash_pattern_slash: "split() pattern for -a switch (//'s are optional)"
    edit_files_place: "[extension]     edit <> files in place (makes backup if extension supplied)"
    i_directory: "specify @INC/#include directory (several -I's allowed)"
    enable_line_ending: "[octal]         enable line ending processing, specifies line terminator"
    assume_loop_program: "assume \\\"while (<>) { ... }\\\" loop around program"
    assume_loop_n: "assume loop like -n but print line also, like sed"
    enable_rudimentary_parsing: "enable rudimentary parsing for switches after programfile"
    look_using_variable: "look for programfile using PATH environment variable"
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