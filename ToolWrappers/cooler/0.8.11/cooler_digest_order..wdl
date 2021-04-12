version 1.0

task CoolerDigestOrder {
  input {
    String cooler
    String digest
    String chrom_sizes_path
    String fast_a_path
    String enzyme
  }
  command <<<
    cooler digest order_ \
      ~{cooler} \
      ~{digest} \
      ~{chrom_sizes_path} \
      ~{fast_a_path} \
      ~{enzyme}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cooler:0.8.11--pyh3252c3a_0"
  }
  parameter_meta {
    cooler: ""
    digest: ""
    chrom_sizes_path: ""
    fast_a_path: ""
    enzyme: ""
  }
  output {
    File out_stdout = stdout()
  }
}