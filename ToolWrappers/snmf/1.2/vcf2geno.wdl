version 1.0

task Vcf2geno {
  input {
    File? _help
  }
  command <<<
    vcf2geno \
      ~{if defined(_help) then ("-input " +  '"' + _help + '"') else ""}
  >>>
  parameter_meta {
    _help: "--help"
  }
  output {
    File out_stdout = stdout()
  }
}