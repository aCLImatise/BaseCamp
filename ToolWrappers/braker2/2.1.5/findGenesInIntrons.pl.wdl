version 1.0

task FindGenesInIntronspl {
  input {
    Boolean? in_gff
    Boolean? jg_gff
    Boolean? out_gff
    Boolean? verbose
  }
  command <<<
    findGenesInIntrons_pl \
      ~{if (in_gff) then "--in_gff" else ""} \
      ~{if (jg_gff) then "--jg_gff" else ""} \
      ~{if (out_gff) then "--out_gff" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    in_gff: "[name] name of file with gtf format gene predictions"
    jg_gff: "[name] name of file with corresponding joingenes predictions"
    out_gff: "[name] output (gtf format)"
    verbose: "--debug"
  }
  output {
    File out_stdout = stdout()
  }
}