version 1.0

task Dinamo {
  input {
    Boolean? norc
    Boolean? no_log
  }
  command <<<
    dinamo \
      ~{if (norc) then "--norc" else ""} \
      ~{if (no_log) then "--no-log" else ""}
  >>>
  parameter_meta {
    norc: ": When -p is not used, prevents dinamo to link motif to their reverse complement\\n(Please be warned : not linking the motif to their reverse complement usually doubles memory usage)"
    no_log: ": Prevents the log ouput from being displayed"
  }
  output {
    File out_stdout = stdout()
  }
}