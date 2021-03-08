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
    docker: "quay.io/biocontainers/mikado:2.1.1--py36hf0b53f7_0"
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