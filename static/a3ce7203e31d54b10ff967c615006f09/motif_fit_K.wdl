version 1.0

task MotifFitK {
  input {
    String nNClusters
  }
  command <<<
    motif fit K \
      ~{if defined(nNClusters) then ("--n-clusters " +  '"' + nNClusters + '"') else ""}
  >>>
}