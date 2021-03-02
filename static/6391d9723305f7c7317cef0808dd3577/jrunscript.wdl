version 1.0

task Jrunscript {
  input {
    File? classpath
    File? cp
    Boolean? namevalue_set_property
    Boolean? flag_pass_flag
    String? use_specified_language
    String? evaluate_given_script
    String? encoding
    Boolean? list_scripting_engines
    String? arguments_dot_dot_dot
  }
  command <<<
    jrunscript \
      ~{arguments_dot_dot_dot} \
      ~{if defined(classpath) then ("-classpath " +  '"' + classpath + '"') else ""} \
      ~{if defined(cp) then ("-cp " +  '"' + cp + '"') else ""} \
      ~{if (namevalue_set_property) then "-D" else ""} \
      ~{if (flag_pass_flag) then "-J" else ""} \
      ~{if defined(use_specified_language) then ("-l " +  '"' + use_specified_language + '"') else ""} \
      ~{if defined(evaluate_given_script) then ("-e " +  '"' + evaluate_given_script + '"') else ""} \
      ~{if defined(encoding) then ("-encoding " +  '"' + encoding + '"') else ""} \
      ~{if (list_scripting_engines) then "-q" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    classpath: "Specify where to find user class files"
    cp: "Specify where to find user class files"
    namevalue_set_property: "<name>=<value>     Set a system property"
    flag_pass_flag: "<flag>             Pass <flag> directly to the runtime system"
    use_specified_language: "Use specified scripting language"
    evaluate_given_script: "Evaluate given script"
    encoding: "Specify character encoding used by script files"
    list_scripting_engines: "List all scripting engines available and exit"
    arguments_dot_dot_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}