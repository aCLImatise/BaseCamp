version 1.0

task Mdocassemble {
  input {
    String? format
    File? out
    String? drop_ns
    Boolean? n_types
    String mdoc
    String assemble
  }
  command <<<
    mdoc_assemble \
      ~{mdoc} \
      ~{assemble} \
      ~{if defined(format) then ("--format " +  '"' + format + '"') else ""} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""} \
      ~{if defined(drop_ns) then ("--dropns " +  '"' + drop_ns + '"') else ""} \
      ~{if (n_types) then "--ntypes" else ""}
  >>>
  parameter_meta {
    format: "The documentation FORMAT used in DIRECTORIES.\\nValid formats include:\\necma\\necmaspec\\nerror\\nhb\\nman\\nsimple\\nxhtml\\nIf not specified, the default format is `ecma'."
    out: "Provides the output file prefix; the files PREFIX.\\nzip and PREFIX.tree will be created.\\nIf not specified, `tree' is the default PREFIX."
    drop_ns: "The namespace that has been dropped from this\\nversion of the assembly."
    n_types: "Replace references to native types with their\\noriginal types."
    mdoc: ""
    assemble: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}