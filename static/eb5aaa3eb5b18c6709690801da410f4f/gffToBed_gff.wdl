version 1.0

task GffToBedGff {
  input {
    Boolean? emit_tool_contract
    String gff_to_bed
  }
  command <<<
    gffToBed gff \
      ~{gff_to_bed} \
      ~{true="--emit-tool-contract" false="" emit_tool_contract}
  >>>
  parameter_meta {
    emit_tool_contract: ""
    gff_to_bed: ""
  }
}