version 1.0

task FamSeq {
  input {
    String? vcfVcf
    String? lkLk
  }
  command <<<
    FamSeq \
      ~{vcfVcf} \
      ~{lkLk}
  >>>
}