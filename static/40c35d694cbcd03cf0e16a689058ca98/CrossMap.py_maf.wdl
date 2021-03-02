version 1.0

task CrossMappyMaf {
  input {
    String crossmap_do_tpy
  }
  command <<<
    CrossMap_py maf \
      ~{crossmap_do_tpy}
  >>>
  runtime {
    docker: "quay.io/biocontainers/crossmap:0.5.2--pyh7b7c402_0"
  }
  parameter_meta {
    crossmap_do_tpy: "maf       hg19ToHg38.over.chain.gz  test.hg19.maf  hg38.fa  GRCh38"
  }
  output {
    File out_stdout = stdout()
  }
}