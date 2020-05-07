version 1.0

task HtsboxBgzip {
  input {
    Boolean cC
    Boolean dD
    Boolean fF
    Int bB
    Int sS
  }
  command <<<
    htsbox bgzip \
      ~{true="-c" false="" cC} \
      ~{true="-d" false="" dD} \
      ~{true="-f" false="" fF} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""}
  >>>
}