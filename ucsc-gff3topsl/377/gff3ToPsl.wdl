version 1.0

task Gff3ToPsl {
  input {
    Boolean dropDropQ
    Boolean droptDropt
    String? queryQueryChromSizes
    String? targetTargetChomSizes
    String? ingff3Ingff3
    String? outOutPsl
  }
  command <<<
    gff3ToPsl \
      ~{queryQueryChromSizes} \
      ~{true="-dropQ" false="" dropDropQ} \
      ~{true="-dropT" false="" droptDropt} \
      ~{targetTargetChomSizes} \
      ~{ingff3Ingff3} \
      ~{outOutPsl}
  >>>
}