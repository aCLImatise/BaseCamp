version 1.0

task Monodocs2slashdoc {
  input {
    File? out
    String mdoc
    String export_msx_doc
  }
  command <<<
    monodocs2slashdoc \
      ~{mdoc} \
      ~{export_msx_doc} \
      ~{if defined(out) then ("--out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    out: "The XML FILE to generate.\\nIf not specified, will create a set of files in\\nthe curent directory based on the //AssemblyInfo/\\nAssemblyName values within the documentation.\\nUse '-' to write to standard output."
    mdoc: ""
    export_msx_doc: ""
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}