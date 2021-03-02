version 1.0

task Ikdasm {
  input {
    File? out
    Boolean? assembly
    Boolean? assembly_ref
    Boolean? module_ref
    String file_name
  }
  command <<<
    ikdasm \
      ~{file_name} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if (assembly) then "-assembly" else ""} \
      ~{if (assembly_ref) then "-assemblyref" else ""} \
      ~{if (module_ref) then "-moduleref" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    out: "Direct output to file rather than stdout"
    assembly: "Dumps the contents of the Assembly table"
    assembly_ref: "Dumps the contents of the AssemblyRef table"
    module_ref: "Dumps the contents of the ModuleRef table"
    file_name: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}