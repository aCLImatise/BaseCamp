version 1.0

task Dbxstat {
  input {
    File? outfile
    Boolean? index_dir
    Boolean? minimum
    Boolean? maximum
  }
  command <<<
    dbxstat \
      ~{if (outfile) then "-outfile" else ""} \
      ~{if (index_dir) then "-indexdir" else ""} \
      ~{if (minimum) then "-minimum" else ""} \
      ~{if (maximum) then "-maximum" else ""}
  >>>
  parameter_meta {
    outfile: "outfile    [*.dbxstat] Output file name"
    index_dir: "directory  Index directory (optional)"
    minimum: "integer    [1] Minimum occurrences (Integer 1 or more)"
    maximum: "integer    [0] Maximum occurrences (0=no maximum)\\n(Integer 0 or more)"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}