version 1.0

task PslToChain {
  input {
    Boolean? ignore
  }
  command <<<
    pslToChain \
      ~{if (ignore) then "-ignore" else ""}
  >>>
  parameter_meta {
    ignore: "ignore psl records with negative target strand rather than exiting"
  }
  output {
    File out_stdout = stdout()
  }
}