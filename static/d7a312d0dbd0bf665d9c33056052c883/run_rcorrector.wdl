version 1.0

task RunRcorrector.pl {
  input {
    String iI
  }
  command <<<
    run_rcorrector.pl \
      ~{if defined(iI) then ("-i " +  '"' + iI + '"') else ""}
  >>>
}