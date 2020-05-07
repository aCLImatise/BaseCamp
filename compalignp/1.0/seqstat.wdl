version 1.0

task Seqstat {
  input {
    Boolean aA
    Boolean gcGcComp
    String inInFormat
    Boolean quietQuiet
  }
  command <<<
    seqstat \
      ~{true="-a" false="" aA} \
      ~{true="--gccomp" false="" gcGcComp} \
      ~{if defined(inInFormat) then ("--informat " +  '"' + inInFormat + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet}
  >>>
}