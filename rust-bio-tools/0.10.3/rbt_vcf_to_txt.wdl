version 1.0

task RbtVcftotxt {
  input {
    Boolean? genotypes
    String? fmt
    String? info
  }
  command <<<
    rbt vcf_to_txt \
      ~{if (genotypes) then "--genotypes" else ""} \
      ~{if defined(fmt) then ("--fmt " +  '"' + fmt + '"') else ""} \
      ~{if defined(info) then ("--info " +  '"' + info + '"') else ""}
  >>>
  parameter_meta {
    genotypes: "Display genotypes."
    fmt: "...     Select FORMAT tags."
    info: "...    Select INFO tags."
  }
  output {
    File out_stdout = stdout()
  }
}