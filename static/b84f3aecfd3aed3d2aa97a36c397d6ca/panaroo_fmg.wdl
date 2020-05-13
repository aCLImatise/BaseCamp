version 1.0

task PanarooFmg {
  input {
    String treeTree
    String paPa
    String outfileOutfile
    String nNBoot
    String threadsThreads
    Boolean verboseVerbose
  }
  command <<<
    panaroo-fmg \
      ~{if defined(treeTree) then ("--tree " +  '"' + treeTree + '"') else ""} \
      ~{if defined(paPa) then ("--pa " +  '"' + paPa + '"') else ""} \
      ~{if defined(outfileOutfile) then ("--outfile " +  '"' + outfileOutfile + '"') else ""} \
      ~{if defined(nNBoot) then ("--nboot " +  '"' + nNBoot + '"') else ""} \
      ~{if defined(threadsThreads) then ("--threads " +  '"' + threadsThreads + '"') else ""} \
      ~{true="--verbose" false="" verboseVerbose}
  >>>
}