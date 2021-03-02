version 1.0

task VsnpBrucMlstpy {
  input {
    Int? read_one
    Int? read_two
    Boolean? v
    String prog
  }
  command <<<
    vsnp_bruc_mlst_py \
      ~{prog} \
      ~{if defined(read_one) then ("--read1 " +  '"' + read_one + '"') else ""} \
      ~{if defined(read_two) then ("--read2 " +  '"' + read_two + '"') else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    read_one: "Required: single read"
    read_two: "Optional: paired read"
    v: ""
    prog: ""
  }
  output {
    File out_stdout = stdout()
  }
}