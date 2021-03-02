version 1.0

task VarlociraptorFiltercallsControlfdr {
  input {
    String? events
    String? fdr
    Int? maxlen
    Int? min_len
    String? var
    String calls_dot_bcf
  }
  command <<<
    varlociraptor filter_calls control_fdr \
      ~{calls_dot_bcf} \
      ~{if defined(events) then ("--events " +  '"' + events + '"') else ""} \
      ~{if defined(fdr) then ("--fdr " +  '"' + fdr + '"') else ""} \
      ~{if defined(maxlen) then ("--maxlen " +  '"' + maxlen + '"') else ""} \
      ~{if defined(min_len) then ("--minlen " +  '"' + min_len + '"') else ""} \
      ~{if defined(var) then ("--var " +  '"' + var + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/varlociraptor:2.6.1--hd5fb649_0"
  }
  parameter_meta {
    events: "...    Events to consider."
    fdr: "FDR to control for."
    maxlen: "Maximum indel length to consider (exclusive)."
    min_len: "Minimum indel length to consider."
    var: "Variant type to consider. [possible values: INS, DEL, SNV, MNV, BND, INV, DUP, REP, REF]"
    calls_dot_bcf: ""
  }
  output {
    File out_stdout = stdout()
  }
}