version 1.0

task Cmph5toolspyStats {
  input {
    File? outfile
    String? what
  }
  command <<<
    cmph5tools_py stats \
      ~{if defined(outfile) then ("--outFile " +  '"' + outfile + '"') else ""} \
      ~{if defined(what) then ("--what " +  '"' + what + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outfile: "output csv filename"
    what: ""
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}