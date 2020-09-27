version 1.0

task Funcannot {
  input {
    File? geneid
  }
  command <<<
    funcannot \
      ~{if defined(geneid) then ("--geneid " +  '"' + geneid + '"') else ""}
  >>>
  parameter_meta {
    geneid: "specifies common genelist identifier in VCF file(s)"
  }
  output {
    File out_stdout = stdout()
  }
}