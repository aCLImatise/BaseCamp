version 1.0

task MafSort {
  input {
    Boolean dD
    Boolean nN
  }
  command <<<
    maf-sort \
      ~{true="-d" false="" dD} \
      ~{true="-n" false="" nN}
  >>>
}