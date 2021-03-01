version 1.0

task CooltoolsGenomeBinnify {
  input {
    String chrom_sizes_path
    String binsize
  }
  command <<<
    cooltools genome binnify \
      ~{chrom_sizes_path} \
      ~{binsize}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cooltools:0.3.2--py36h29c9776_0"
  }
  parameter_meta {
    chrom_sizes_path: ""
    binsize: ""
  }
  output {
    File out_stdout = stdout()
  }
}