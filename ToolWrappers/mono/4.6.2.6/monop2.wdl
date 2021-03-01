version 1.0

task Monop2 {
  input {
    Boolean? declared_only
    Boolean? filter_obsolete
    Boolean? private
    Boolean? refs
    Boolean? runtime_version
    Boolean? search
    Boolean? xi
    Boolean? x_a
    Boolean? shows_types_declare
  }
  command <<<
    monop2 \
      ~{if (declared_only) then "--declared-only" else ""} \
      ~{if (filter_obsolete) then "--filter-obsolete" else ""} \
      ~{if (private) then "--private" else ""} \
      ~{if (refs) then "--refs" else ""} \
      ~{if (runtime_version) then "--runtime-version" else ""} \
      ~{if (search) then "--search" else ""} \
      ~{if (xi) then "--xi" else ""} \
      ~{if (x_a) then "--xa" else ""} \
      ~{if (shows_types_declare) then "--a" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    declared_only: "Only show members declared in the Type"
    filter_obsolete: "Do not show obsolete types and members"
    private: "Show private members"
    refs: "Print a list of the referenced assemblies for an assembly"
    runtime_version: "Print runtime version"
    search: "Search through all known namespaces"
    xi: "Set search style to Xamarin.iOS"
    x_a: "Set search style to Xamarin.Android"
    shows_types_declare: "Shows all the types declare in the specified assembly"
  }
  output {
    File out_stdout = stdout()
  }
}