version 1.0

task MapBack {
  input {
    Boolean kK
    Boolean rR
    String threadsThreads
  }
  command <<<
    map_back \
      ~{true="-k" false="" kK} \
      ~{true="-r" false="" rR} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""}
  >>>
}