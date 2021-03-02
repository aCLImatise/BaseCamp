version 1.0

task Perldoc {
  input {
    Boolean? report_version
    Boolean? recursive_search_slow
    Boolean? ignore_case
    Boolean? display_pod_using
    Boolean? display_unformatted_pod
    Boolean? display_modules_file
    Boolean? specify_replacement_groff
    Boolean? display_file_name
    Boolean? attempt_drop_privs
    Boolean? arguments_file_names
    Boolean? verbosely_describe_going
    Boolean? send_output_stdout
    File? optionvalue
    String? choose_doc_translation
    Boolean? use_index_looks
    Boolean? search_text_answers
    Boolean? search_perl_builtin
    Boolean? search_perl_api
    Boolean? search_predefined_variables
  }
  command <<<
    perldoc \
      ~{if (report_version) then "-V" else ""} \
      ~{if (recursive_search_slow) then "-r" else ""} \
      ~{if (ignore_case) then "-i" else ""} \
      ~{if (display_pod_using) then "-t" else ""} \
      ~{if (display_unformatted_pod) then "-u" else ""} \
      ~{if (display_modules_file) then "-m" else ""} \
      ~{if (specify_replacement_groff) then "-n" else ""} \
      ~{if (display_file_name) then "-l" else ""} \
      ~{if (attempt_drop_privs) then "-U" else ""} \
      ~{if (arguments_file_names) then "-F" else ""} \
      ~{if (verbosely_describe_going) then "-D" else ""} \
      ~{if (send_output_stdout) then "-T" else ""} \
      ~{if defined(optionvalue) then ("-d " +  '"' + optionvalue + '"') else ""} \
      ~{if defined(choose_doc_translation) then ("-L " +  '"' + choose_doc_translation + '"') else ""} \
      ~{if (use_index_looks) then "-X" else ""} \
      ~{if (search_text_answers) then "-q" else ""} \
      ~{if (search_perl_builtin) then "-f" else ""} \
      ~{if (search_perl_api) then "-a" else ""} \
      ~{if (search_predefined_variables) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    report_version: "Report version"
    recursive_search_slow: "Recursive search (slow)"
    ignore_case: "Ignore case"
    display_pod_using: "Display pod using pod2text instead of Pod::Man and groff\\n(-t is the default on win32 unless -n is specified)"
    display_unformatted_pod: "Display unformatted pod text"
    display_modules_file: "Display module's file in its entirety"
    specify_replacement_groff: "Specify replacement for groff"
    display_file_name: "Display the module's file name"
    attempt_drop_privs: "Don't attempt to drop privs for security"
    arguments_file_names: "Arguments are file names, not modules (implies -U)"
    verbosely_describe_going: "Verbosely describe what's going on"
    send_output_stdout: "Send output to STDOUT without any pager"
    optionvalue: ":option_value"
    choose_doc_translation: "Choose doc translation (if any)"
    use_index_looks: "Use index if present (looks for pod.idx at .../../lib/5.26.2/x86_64-linux-thread-multi)"
    search_text_answers: "Search the text of questions (not answers) in perlfaq[1-9]"
    search_perl_builtin: "Search Perl built-in functions"
    search_perl_api: "Search Perl API"
    search_predefined_variables: "Search predefined Perl variables"
  }
  output {
    File out_stdout = stdout()
    File out_optionvalue = "${in_optionvalue}"
  }
}