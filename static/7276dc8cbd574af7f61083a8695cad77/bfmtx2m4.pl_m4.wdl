version 1.0

task Bfmtx2m4.plM4.preDirectory {
  input {
    String? thisThis
    String? m4preM4pre
    String? allAllNormFa
  }
  command <<<
    bfmtx2m4.pl m4.pre directory \
      ~{thisThis} \
      ~{m4preM4pre} \
      ~{allAllNormFa}
  >>>
}