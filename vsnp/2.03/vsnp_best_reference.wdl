version 1.0

task VsnpBestReference.py {
  input {
    String? read_one
    String? read_two
    Boolean? v
    String prog
  }
  command <<<
    vsnp_best_reference.py \
      ~{prog} \
      ~{if defined(read_one) then ("--read1 " +  '"' + read_one + '"') else ""} \
      ~{if defined(read_two) then ("--read2 " +  '"' + read_two + '"') else ""} \
      ~{true="-v" false="" v}
  >>>
  parameter_meta {
    read_one: "Required: single read"
    read_two: "Optional: paired read"
    v: ""
    prog: ""
  }
}