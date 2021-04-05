version 1.0

task ExtractPromoterRegionspy {
  input {
    String little
    String script
    String to
    String extract
    String promoter
    String regions
    String from
    String genes_dot
  }
  command <<<
    extract_promoter_regions_py \
      ~{little} \
      ~{script} \
      ~{to} \
      ~{extract} \
      ~{promoter} \
      ~{regions} \
      ~{from} \
      ~{genes_dot}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mikado:2.2.3--py38h6ed170a_0"
  }
  parameter_meta {
    little: ""
    script: ""
    to: ""
    extract: ""
    promoter: ""
    regions: ""
    from: ""
    genes_dot: ""
  }
  output {
    File out_stdout = stdout()
  }
}