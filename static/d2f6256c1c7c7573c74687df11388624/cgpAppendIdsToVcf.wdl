version 1.0

task CgpAppendIdsToVcf.pl {
  input {
    Boolean? id_start
    String? i
    String? o
  }
  command <<<
    cgpAppendIdsToVcf.pl \
      ~{true="--idstart" false="" id_start} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    id_start: "(-g)       Will set a sequential id generator to the given integer value. If not present will assign UUIDs to each variant."
    i: ""
    o: ""
  }
}