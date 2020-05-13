version 1.0

task GsutilIam {
  input {
    Boolean dD
    Boolean dD
    Boolean rR
    Boolean aA
    String eE
    Boolean fF
    Boolean rR
    Boolean fF
  }
  command <<<
    gsutil iam \
      ~{true="-d" false="" dD} \
      ~{true="-d" false="" dD} \
      ~{true="-R" false="" rR} \
      ~{true="-a" false="" aA} \
      ~{if defined(eE) then ("-e " +  '"' + eE + '"') else ""} \
      ~{true="-f" false="" fF} \
      ~{true="-R" false="" rR} \
      ~{true="-f" false="" fF}
  >>>
}