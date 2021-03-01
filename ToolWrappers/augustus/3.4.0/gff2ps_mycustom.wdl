version 1.0

task Gff2psMycustom {
  command <<<
    gff2ps_mycustom
  >>>
  runtime {
    docker: "quay.io/biocontainers/augustus:3.4.0--pl526h0faeac2_0"
  }
  output {
    File out_stdout = stdout()
  }
}