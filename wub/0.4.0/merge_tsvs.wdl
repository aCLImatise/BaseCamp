version 1.0

task MergeTsvs.py {
  input {
    String jJ
    String fF
    String oO
    Boolean zZ
    String? inputInputTSvs
  }
  command <<<
    merge_tsvs.py \
      ~{inputInputTSvs} \
      ~{if defined(jJ) then ("-j " +  '"' + jJ + '"') else ""} \
      ~{if defined(fF) then ("-f " +  '"' + fF + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{true="-z" false="" zZ}
  >>>
}