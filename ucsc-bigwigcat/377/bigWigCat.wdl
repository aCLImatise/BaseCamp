version 1.0

task BigWigCat {
  input {
    String itemsItemsPerSlot
  }
  command <<<
    bigWigCat \
      ~{if defined(itemsItemsPerSlot) then ("-itemsPerSlot " +  '"' + itemsItemsPerSlot + '"') else ""}
  >>>
}