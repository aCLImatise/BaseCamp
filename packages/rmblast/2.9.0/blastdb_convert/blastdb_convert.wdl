version 1.0

task BlastdbConvert {
  input {
    String? out
  }
  command <<<
    blastdb_convert \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""}
  >>>
  parameter_meta {
    out: "[-logfile File_Name] [-version]"
  }
  output {
    File out_stdout = stdout()
  }
}