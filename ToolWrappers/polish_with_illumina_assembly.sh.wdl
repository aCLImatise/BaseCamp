version 1.0

task PolishWithIlluminaAssemblysh {
  input {
    Boolean? m
    String? i
    Int? t
    String? q
    String? r
  }
  command <<<
    polish_with_illumina_assembly_sh \
      ~{if (m) then "-m" else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    m: ""
    i: ""
    t: ""
    q: ""
    r: ""
  }
  output {
    File out_stdout = stdout()
  }
}