version 1.0

task GffToBedGff {
  input {
    Boolean? emit_tool_contract
    String gff_to_bed
  }
  command <<<
    gffToBed gff \
      ~{gff_to_bed} \
      ~{if (emit_tool_contract) then "--emit-tool-contract" else ""}
  >>>
  parameter_meta {
    emit_tool_contract: ""
    gff_to_bed: ""
  }
  output {
    File out_stdout = stdout()
  }
}