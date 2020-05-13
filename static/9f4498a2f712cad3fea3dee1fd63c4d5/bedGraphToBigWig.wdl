version 1.0

task BedGraphToBigWig {
  input {
    String blockBlockSize
    String itemsItemsPerSlot
    String uncUnc
    String? inInBedGraph
    String? chromChromSizes
    String? outOutBw
  }
  command <<<
    bedGraphToBigWig \
      ~{inInBedGraph} \
      ~{if defined(blockBlockSize) then ("-blockSize " +  '"' + blockBlockSize + '"') else ""} \
      ~{if defined(itemsItemsPerSlot) then ("-itemsPerSlot " +  '"' + itemsItemsPerSlot + '"') else ""} \
      ~{if defined(uncUnc) then ("-unc " +  '"' + uncUnc + '"') else ""} \
      ~{chromChromSizes} \
      ~{outOutBw}
  >>>
}