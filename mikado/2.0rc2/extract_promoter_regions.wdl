version 1.0

task ExtractPromoterRegions.py {
  input {
    Boolean? gzip
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
    extract_promoter_regions.py \
      ~{little} \
      ~{script} \
      ~{to} \
      ~{extract} \
      ~{promoter} \
      ~{regions} \
      ~{from} \
      ~{genes_dot} \
      ~{true="--gzip" false="" gzip}
  >>>
  parameter_meta {
    gzip: "Output will be compressed in GZip format."
    little: ""
    script: ""
    to: ""
    extract: ""
    promoter: ""
    regions: ""
    from: ""
    genes_dot: ""
  }
}