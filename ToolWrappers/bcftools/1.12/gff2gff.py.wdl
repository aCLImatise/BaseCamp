version 1.0

task Gff2gffpy {
  command <<<
    gff2gff_py
  >>>
  runtime {
    docker: "quay.io/biocontainers/bcftools:1.12--h3f113a9_0"
  }
  output {
    File out_stdout = stdout()
  }
}