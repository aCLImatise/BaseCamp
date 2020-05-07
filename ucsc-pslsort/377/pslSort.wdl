version 1.0

task PslSort {
  input {
    Boolean noNoHead
    String verboseVerbose
  }
  command <<<
    pslSort \
      ~{true="-nohead" false="" noNoHead} \
      ~{if defined(verboseVerbose) then ("-verbose " +  '"' + verboseVerbose + '"') else ""}
  >>>
}