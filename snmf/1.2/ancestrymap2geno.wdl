version 1.0

task Ancestrymap2geno {
  input {
    File? _help
    File? _helpgeno
  }
  command <<<
    ancestrymap2geno \
      ~{if defined(_help) then ("-input " +  '"' + _help + '"') else ""} \
      ~{if defined(_helpgeno) then ("-output " +  '"' + _helpgeno + '"') else ""}
  >>>
  parameter_meta {
    _help: "--help"
    _helpgeno: "--help.geno"
  }
}