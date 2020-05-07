version 1.0

task BedGraphPackIn.bedGraph {
  input {
    String? outOutBedGraph
  }
  command <<<
    bedGraphPack in.bedGraph \
      ~{outOutBedGraph}
  >>>
}