version 1.0

task ProsicControlFdr {
  input {
    String? fdr
    String? event
    Int? max_len
    Int? min_len
    String? var
    String bcf
  }
  command <<<
    prosic control-fdr \
      ~{bcf} \
      ~{if defined(fdr) then ("--fdr " +  '"' + fdr + '"') else ""} \
      ~{if defined(event) then ("--event " +  '"' + event + '"') else ""} \
      ~{if defined(max_len) then ("--max-len " +  '"' + max_len + '"') else ""} \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if defined(var) then ("--var " +  '"' + var + '"') else ""}
  >>>
  parameter_meta {
    fdr: "FDR to control for. [default: 0.05]"
    event: "Event to consider."
    max_len: "Maximum indel length to consider (exclusive)."
    min_len: "Minimum indel length to consider."
    var: "Variant type to consider (SNV, INS, DEL)."
    bcf: ""
  }
}