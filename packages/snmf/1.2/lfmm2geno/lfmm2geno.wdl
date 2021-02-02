version 1.0

task Lfmm2geno {
  input {
    File? _help
  }
  command <<<
    lfmm2geno \
      ~{if defined(_help) then ("-input " +  '"' + _help + '"') else ""}
  >>>
  parameter_meta {
    _help: "--help"
  }
  output {
    File out_stdout = stdout()
  }
}