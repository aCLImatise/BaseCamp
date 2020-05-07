version 1.0

task Rcorrector {
  input {
    String odOd
    String tT
    Int maxMaxCor
    Int maxMaxCork
    Float wkWk
    Boolean stdoutStdout
    Boolean verboseVerbose
  }
  command <<<
    rcorrector \
      ~{if defined(odOd) then ("-od " +  '"' + odOd + '"') else ""} \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""} \
      ~{if defined(maxMaxCor) then ("-maxcor " +  '"' + maxMaxCor + '"') else ""} \
      ~{if defined(maxMaxCork) then ("-maxcorK " +  '"' + maxMaxCork + '"') else ""} \
      ~{if defined(wkWk) then ("-wk " +  '"' + wkWk + '"') else ""} \
      ~{true="-stdout" false="" stdoutStdout} \
      ~{true="-verbose" false="" verboseVerbose}
  >>>
}