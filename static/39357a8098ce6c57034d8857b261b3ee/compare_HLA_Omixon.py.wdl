version 1.0

task CompareHLAOmixon.py.bak {
  input {
    String? hisHisAtGenotypeFname
    String? omixOmixOnFname
  }
  command <<<
    compare_HLA_Omixon.py.bak \
      ~{hisHisAtGenotypeFname} \
      ~{omixOmixOnFname}
  >>>
}