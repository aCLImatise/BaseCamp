version 1.0

task VsnpReferenceOptions.py {
  input {
    String? select_ref
    Boolean? v
    String prog
  }
  command <<<
    vsnp_reference_options.py \
      ~{prog} \
      ~{if defined(select_ref) then ("--select_ref " +  '"' + select_ref + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    select_ref: "Required: single read, R1 when Illumina read"
    v: ""
    prog: ""
  }
}