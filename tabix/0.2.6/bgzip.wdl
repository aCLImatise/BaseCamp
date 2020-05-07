version 1.0

task Bgzip {
  input {
    Boolean cC
    Boolean dD
    Boolean fF
    Int bB
    Int sS
  }
  command <<<
    bgzip \
      ~{true="-c" false="" cC} \
      ~{true="-d" false="" dD} \
      ~{true="-f" false="" fF} \
      ~{if defined(bB) then ("-b " +  '"' + bB + '"') else ""} \
      ~{if defined(sS) then ("-s " +  '"' + sS + '"') else ""}
  >>>
}