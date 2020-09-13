version 1.0

task ProsoloControlfdr {
  input {
    Float? fdr
    Boolean? events
    Int? max_len
    Int? min_len
    File? bcf_file_contains
    String? var
    String bcf
  }
  command <<<
    prosolo control_fdr \
      ~{bcf} \
      ~{if defined(fdr) then ("--fdr " +  '"' + fdr + '"') else ""} \
      ~{if (events) then "--events" else ""} \
      ~{if defined(max_len) then ("--max-len " +  '"' + max_len + '"') else ""} \
      ~{if defined(min_len) then ("--min-len " +  '"' + min_len + '"') else ""} \
      ~{if defined(bcf_file_contains) then ("--output " +  '"' + bcf_file_contains + '"') else ""} \
      ~{if defined(var) then ("--var " +  '"' + var + '"') else ""}
  >>>
  parameter_meta {
    fdr: "FDR to control for. [default: 0.05]"
    events: "<STRING(,STRING)*>    Comma-separated list of Events to consider jointly (e.g. `--events\\nEvent1,Event2`)."
    max_len: "Maximum indel length to consider (exclusive)."
    min_len: "Minimum indel length to consider."
    bcf_file_contains: "BCF file that contains the filtered results (if omitted, write to STDOUT)."
    var: "Variant type to consider (SNV, INS, DEL)."
    bcf: ""
  }
  output {
    File out_stdout = stdout()
  }
}