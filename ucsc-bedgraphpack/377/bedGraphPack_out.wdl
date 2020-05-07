version 1.0

task BedGraphPackOut.bedGraph {
  input {
    String? inInBedGraph
    String? outOutBedGraph
  }
  command <<<
    bedGraphPack out.bedGraph \
      ~{inInBedGraph} \
      ~{outOutBedGraph}
  >>>
}