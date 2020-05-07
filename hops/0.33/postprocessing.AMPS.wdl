version 1.0

task Postprocessing.AMPS.r {
  input {
    Boolean rmaRmaEx
    Boolean malteMalteX
    Boolean threadsThreads
    Boolean nodeNode
    Boolean strictStrict
    Boolean displayDisplay
  }
  command <<<
    postprocessing.AMPS.r \
      ~{true="--rmaex" false="" rmaRmaEx} \
      ~{true="--maltex" false="" malteMalteX} \
      ~{true="--threads" false="" threadsThreads} \
      ~{true="--node" false="" nodeNode} \
      ~{true="--strict" false="" strictStrict} \
      ~{true="--display" false="" displayDisplay}
  >>>
}