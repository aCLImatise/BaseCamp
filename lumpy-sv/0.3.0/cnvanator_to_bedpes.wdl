version 1.0

task CnvanatorToBedpes.py {
  input {
    String? cnv_calls
    Boolean? cnv_kit
    String? del_o
    String? dup_o
    String? breakpoint_size
  }
  command <<<
    cnvanator_to_bedpes.py \
      ~{if defined(cnv_calls) then ("--cnv_calls " +  '"' + cnv_calls + '"') else ""} \
      ~{true="--cnvkit" false="" cnv_kit} \
      ~{if defined(del_o) then ("--del_o " +  '"' + del_o + '"') else ""} \
      ~{if defined(dup_o) then ("--dup_o " +  '"' + dup_o + '"') else ""} \
      ~{if defined(breakpoint_size) then ("--breakpoint_size " +  '"' + breakpoint_size + '"') else ""}
  >>>
  parameter_meta {
    cnv_calls: "Output file from CNVanator"
    cnv_kit: "input is .cns file from cnvkit"
    del_o: "Deletion output bedpe file name"
    dup_o: "Duplication output bedpe file name"
    breakpoint_size: "The total size of the resulting breakpoint, centered on the call edge"
  }
}