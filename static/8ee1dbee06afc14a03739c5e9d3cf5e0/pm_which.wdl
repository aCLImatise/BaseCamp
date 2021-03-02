version 1.0

task PmWhich {
  input {
    Boolean? quiet
    Boolean? paths
    Boolean? all
    String? namespace
    Boolean? only_print_module
    Boolean? show_module_version
    File? add_path_search
    Boolean? dump
    Boolean? var_8
    String add
    String only
    String returns
    String show
    String module
    String a
    String print
    String the
    File path
    String names
    String to
    String search
    String given
  }
  command <<<
    pm_which \
      ~{add} \
      ~{only} \
      ~{returns} \
      ~{show} \
      ~{module} \
      ~{a} \
      ~{print} \
      ~{the} \
      ~{path} \
      ~{names} \
      ~{to} \
      ~{search} \
      ~{given} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (paths) then "--paths" else ""} \
      ~{if (all) then "--all" else ""} \
      ~{if defined(namespace) then ("--namespace " +  '"' + namespace + '"') else ""} \
      ~{if (only_print_module) then "-m" else ""} \
      ~{if (show_module_version) then "-V" else ""} \
      ~{if defined(add_path_search) then ("-I " +  '"' + add_path_search + '"') else ""} \
      ~{if (dump) then "--dump" else ""} \
      ~{if (var_8) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: "Just print paths"
    paths: "Just convert the module name into a relative path"
    all: "Print all paths, not just the first one found"
    namespace: "all modules in the given namespace"
    only_print_module: "Only print module names, not paths"
    show_module_version: "Show module version"
    add_path_search: "Add a path to search (like perl -I)"
    dump: "Dump paths that would be searched (@INC by default)"
    var_8: ""
    add: ""
    only: ""
    returns: ""
    show: ""
    module: ""
    a: ""
    print: ""
    the: ""
    path: ""
    names: ""
    to: ""
    search: ""
    given: ""
  }
  output {
    File out_stdout = stdout()
  }
}