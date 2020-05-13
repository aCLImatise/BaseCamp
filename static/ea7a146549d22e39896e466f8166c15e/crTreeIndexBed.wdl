version 1.0

task CrTreeIndexBed {
  input {
    String blockBlockSize
    String itemsItemsPerSlot
    Boolean noNoCheckSort
    String? inInBed
    String? outOutCr
  }
  command <<<
    crTreeIndexBed \
      ~{inInBed} \
      ~{if defined(blockBlockSize) then ("-blockSize " +  '"' + blockBlockSize + '"') else ""} \
      ~{if defined(itemsItemsPerSlot) then ("-itemsPerSlot " +  '"' + itemsItemsPerSlot + '"') else ""} \
      ~{true="-noCheckSort" false="" noNoCheckSort} \
      ~{outOutCr}
  >>>
}