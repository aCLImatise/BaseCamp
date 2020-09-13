version 1.0

task PipitsRereplicate {
  input {
    File? i
    String? o
    File? uc
    String re_replicate
    String sequences_dot
  }
  command <<<
    pipits_rereplicate \
      ~{re_replicate} \
      ~{sequences_dot} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(uc) then ("--uc " +  '"' + uc + '"') else ""}
  >>>
  parameter_meta {
    i: "[REQUIRED]"
    o: "[REQUIRED]"
    uc: "[REQUIRED] uc file from VSEARCH"
    re_replicate: ""
    sequences_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}