version 1.0

task MakeTree {
  input {
    Boolean fastFastA
    String depthDepth
    String outputOutput
  }
  command <<<
    makeTree \
      ~{true="--fasta" false="" fastFastA} \
      ~{if defined(depthDepth) then ("--depth " +  '"' + depthDepth + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""}
  >>>
}