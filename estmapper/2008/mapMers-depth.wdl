version 1.0

task MapMersDepth {
  input {
    Boolean countCount
    Boolean depthDepth
    Boolean statsStats
  }
  command <<<
    mapMers-depth \
      ~{true="-count" false="" countCount} \
      ~{true="-depth" false="" depthDepth} \
      ~{true="-stats" false="" statsStats}
  >>>
}