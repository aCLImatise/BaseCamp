version 1.0

task Ta2ace {
  input {
    String? list_assemblies_put
  }
  command <<<
    ta2ace \
      ~{if defined(list_assemblies_put) then ("-a " +  '"' + list_assemblies_put + '"') else ""}
  >>>
  parameter_meta {
    list_assemblies_put: "List of assemblies to put in .ace file"
  }
}