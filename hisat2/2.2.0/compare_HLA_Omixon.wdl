version 1.0

task CompareHLAOmixon.py {
  input {
    String? hisHisAtGenotypeFname
    String? omixOmixOnFname
  }
  command <<<
    compare_HLA_Omixon.py \
      ~{hisHisAtGenotypeFname} \
      ~{omixOmixOnFname}
  >>>
}