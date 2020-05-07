version 1.0

task Bfmtx2m4.plAllNorm.faDirectory {
  input {
    String? thisThis
    String? m4preM4pre
    String? allAllNormFa
  }
  command <<<
    bfmtx2m4.pl all_norm.fa directory \
      ~{thisThis} \
      ~{m4preM4pre} \
      ~{allAllNormFa}
  >>>
}