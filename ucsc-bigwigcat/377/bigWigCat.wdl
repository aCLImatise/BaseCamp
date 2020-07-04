version 1.0

task BigWigCat {
  input {
    String? items_per_slot
    String where
    String in
  }
  command <<<
    bigWigCat \
      ~{where} \
      ~{in} \
      ~{if defined(items_per_slot) then ("-itemsPerSlot " +  '"' + items_per_slot + '"') else ""}
  >>>
  parameter_meta {
    items_per_slot: "- Number of data points bundled at lowest level. Default 1024"
    where: ""
    in: ""
  }
}