version 1.0

task VsnpReferenceOptionspy {
  input {
    Int? select_ref
    Boolean? v
    String prog
  }
  command <<<
    vsnp_reference_options_py \
      ~{prog} \
      ~{if defined(select_ref) then ("--select_ref " +  '"' + select_ref + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    select_ref: "Required: single read, R1 when Illumina read"
    v: ""
    prog: ""
  }
  output {
    File out_stdout = stdout()
  }
}