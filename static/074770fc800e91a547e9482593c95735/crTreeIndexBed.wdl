version 1.0

task CrTreeIndexBed {
  input {
    String? block_size
    String? items_per_slot
    Boolean? no_check_sort
    String in_dot_bed
    String out_do_tcr
  }
  command <<<
    crTreeIndexBed \
      ~{in_dot_bed} \
      ~{out_do_tcr} \
      ~{if defined(block_size) then ("-blockSize " +  '"' + block_size + '"') else ""} \
      ~{if defined(items_per_slot) then ("-itemsPerSlot " +  '"' + items_per_slot + '"') else ""} \
      ~{true="-noCheckSort" false="" no_check_sort}
  >>>
  parameter_meta {
    block_size: "- number of children per node in index tree. Default 1024"
    items_per_slot: "- number of items per index slot. Default is half block size"
    no_check_sort: "- Don't check sorting order of in.tab"
    in_dot_bed: ""
    out_do_tcr: ""
  }
}