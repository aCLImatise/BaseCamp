version 1.0

task Testsra2 {
  input {
    Boolean? xml_text_generate
    Boolean? check_objects_recursively
    Boolean? _call_vdbmanagerpathtype
    Boolean? disable_caching_default
    File? bytes
    File? library
    Boolean? verbose
    Boolean? quiet
    File? option_file
    File? l
    Boolean? q
    String quit_dot
  }
  command <<<
    test_sra_2 \
      ~{quit_dot} \
      ~{if (xml_text_generate) then "-X" else ""} \
      ~{if (check_objects_recursively) then "-R" else ""} \
      ~{if (_call_vdbmanagerpathtype) then "-N" else ""} \
      ~{if (disable_caching_default) then "-C" else ""} \
      ~{if defined(bytes) then ("--bytes " +  '"' + bytes + '"') else ""} \
      ~{if defined(library) then ("--library " +  '"' + library + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(option_file) then ("--option-file " +  '"' + option_file + '"') else ""} \
      ~{if defined(l) then ("-L " +  '"' + l + '"') else ""} \
      ~{if (q) then "-Q" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    xml_text_generate: "< xml | text > - whether to generate well-formed XML"
    check_objects_recursively: "- check objects recursively"
    _call_vdbmanagerpathtype: "- do not call VDBManagerPathType"
    disable_caching_default: "- do not disable caching (default: from configuration)"
    bytes: "- print the first K bytes of resolved remote HTTP file)\\n(default: 256)"
    library: "- print version of dynamic library"
    verbose: "Increase the verbosity of the program\\nstatus messages. Use multiple times for more\\nverbosity. Negates quiet."
    quiet: "Turn off all status messages for the\\nprogram. Negated by verbose."
    option_file: "Read more options and parameters from the\\nfile.\\n"
    l: ""
    q: ""
    quit_dot: "-L|--log-level <level>           Logging level as number or enum string. One "
  }
  output {
    File out_stdout = stdout()
  }
}