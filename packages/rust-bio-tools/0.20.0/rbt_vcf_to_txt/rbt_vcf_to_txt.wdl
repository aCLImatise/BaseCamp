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
  runtime {
    docker: "quay.io/biocontainers/rust-bio-tools:0.20.0--heda7bfa_0"
  }
  parameter_meta {
    genotypes: "Display genotypes"
    fmt: "...\\nSelect FORMAT tags"
    info: "...\\nSelect INFO tags\\n"
  }
  output {
    File out_stdout = stdout()
  }
}