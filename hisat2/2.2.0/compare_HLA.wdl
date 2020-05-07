version 1.0

task CompareHLA.py {
  input {
    String? hisHisAtGenotypeFname
    String? utUtSwFname
  }
  command <<<
    compare_HLA.py \
      ~{hisHisAtGenotypeFname} \
      ~{utUtSwFname}
  >>>
}