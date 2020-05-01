version 1.0

task ChiraMerge.py {
  input {
    Boolean bB
    Boolean oO
    Boolean gG
    Boolean aoAo
    Boolean soSo
    Boolean dD
    Boolean mcMc
    Boolean mbMb
    Boolean scSc
  }
  command <<<
    chira_merge.py \
      ~{true="-b" false="" bB} \
      ~{true="-o" false="" oO} \
      ~{true="-g" false="" gG} \
      ~{true="-ao" false="" aoAo} \
      ~{true="-so" false="" soSo} \
      ~{true="-d" false="" dD} \
      ~{true="-mc" false="" mcMc} \
      ~{true="-mb" false="" mbMb} \
      ~{true="-sc" false="" scSc}
  >>>
}