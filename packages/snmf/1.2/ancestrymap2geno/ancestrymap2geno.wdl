version 1.0

task Ancestrymap2geno {
  input {
    File? _help
  }
  command <<<
    ancestrymap2geno \
      ~{if defined(_help) then ("-input " +  '"' + _help + '"') else ""}
  >>>
  parameter_meta {
    _help: "--help"
  }
  output {
    File out_stdout = stdout()
  }
}