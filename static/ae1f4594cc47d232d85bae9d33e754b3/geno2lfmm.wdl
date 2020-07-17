version 1.0

task Geno2lfmm {
  input {
    File? _help
    File? _helplfmm
  }
  command <<<
    geno2lfmm \
      ~{if defined(_help) then ("-input " +  '"' + _help + '"') else ""} \
      ~{if defined(_helplfmm) then ("-output " +  '"' + _helplfmm + '"') else ""}
  >>>
  parameter_meta {
    _help: "--help"
    _helplfmm: "--help.lfmm"
  }
}