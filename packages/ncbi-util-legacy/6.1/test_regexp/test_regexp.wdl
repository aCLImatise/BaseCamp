version 1.0

task TestRegexp {
  input {
    Boolean? debug_show_compiled
    Boolean? show_information_compiled
    Int? set_size_offsets
    Boolean? use_posix_interface
    Boolean? output_store_information
    Boolean? time_compilation_execution
    String pcre_test
    String? var_input
    String? var_output
  }
  command <<<
    test_regexp \
      ~{pcre_test} \
      ~{var_input} \
      ~{var_output} \
      ~{if (debug_show_compiled) then "-d" else ""} \
      ~{if (show_information_compiled) then "-i" else ""} \
      ~{if defined(set_size_offsets) then ("-o " +  '"' + set_size_offsets + '"') else ""} \
      ~{if (use_posix_interface) then "-p" else ""} \
      ~{if (output_store_information) then "-s" else ""} \
      ~{if (time_compilation_execution) then "-t" else ""}
  >>>
  parameter_meta {
    debug_show_compiled: "debug: show compiled code; implies -i"
    show_information_compiled: "show information about compiled pattern"
    set_size_offsets: "set size of offsets vector to <n>"
    use_posix_interface: "use POSIX interface"
    output_store_information: "output store information"
    time_compilation_execution: "time compilation and execution"
    pcre_test: ""
    var_input: ""
    var_output: ""
  }
  output {
    File out_stdout = stdout()
  }
}