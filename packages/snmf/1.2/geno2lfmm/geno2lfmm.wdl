version 1.0

task Geno2lfmm {
  input {
    File? _help
  }
  command <<<
    geno2lfmm \
      ~{if defined(_help) then ("-input " +  '"' + _help + '"') else ""}
  >>>
  parameter_meta {
    _help: "--help"
  }
  output {
    File out_stdout = stdout()
  }
}