version 1.0

task TestRegexp {
  input {
    Boolean? debug_show_compiled
    Boolean? show_information_compiled
    String? set_size_offsets
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
      ~{true="-d" false="" debug_show_compiled} \
      ~{true="-i" false="" show_information_compiled} \
      ~{if defined(set_size_offsets) then ("-o " +  '"' + set_size_offsets + '"') else ""} \
      ~{true="-p" false="" use_posix_interface} \
      ~{true="-s" false="" output_store_information} \
      ~{true="-t" false="" time_compilation_execution}
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
}