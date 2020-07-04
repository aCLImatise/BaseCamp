version 1.0

task RbtVcfToTxt {
  input {
    Boolean? genotypes
    String? fmt
    String? info
    String? flags
  }
  command <<<
    rbt vcf-to-txt \
      ~{flags} \
      ~{true="--genotypes" false="" genotypes} \
      ~{if defined(fmt) then ("--fmt " +  '"' + fmt + '"') else ""} \
      ~{if defined(info) then ("--info " +  '"' + info + '"') else ""}
  >>>
  parameter_meta {
    genotypes: "Display genotypes."
    fmt: "...     Select FORMAT tags."
    info: "...    Select INFO tags."
    flags: ""
  }
}