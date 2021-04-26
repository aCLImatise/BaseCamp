version 1.0

task CooltoolsGenomeBinnify {
  input {
    Boolean? all_names
    String chrom_sizes_path
    String binsize
  }
  command <<<
    cooltools genome binnify \
      ~{chrom_sizes_path} \
      ~{binsize} \
      ~{if (all_names) then "--all-names" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cooltools:0.4.0--py39hcbe4a3b_0"
  }
  parameter_meta {
    all_names: "Parse all chromosome names from file, not only default\\nr\\\"^chr[0-9]+$\\\", r\\\"^chr[XY]$\\\", r\\\"^chrM$\\\"."
    chrom_sizes_path: ""
    binsize: ""
  }
  output {
    File out_stdout = stdout()
  }
}