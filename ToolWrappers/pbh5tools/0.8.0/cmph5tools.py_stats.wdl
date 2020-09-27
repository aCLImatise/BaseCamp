version 1.0

task Cmph5toolspyStats {
  input {
    String? what
    String? outfile
  }
  command <<<
    cmph5tools_py stats \
      ~{if defined(what) then ("--what " +  '"' + what + '"') else ""} \
      ~{if defined(outfile) then ("--outFile " +  '"' + outfile + '"') else ""}
  >>>
  parameter_meta {
    what: ""
    outfile: ""
  }
  output {
    File out_stdout = stdout()
  }
}