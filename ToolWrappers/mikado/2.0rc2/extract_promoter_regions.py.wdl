version 1.0

task ExtractPromoterRegionspy {
  input {
    Int gff_three
  }
  command <<<
    extract_promoter_regions_py \
      ~{gff_three}
  >>>
  parameter_meta {
    gff_three: "gene_list"
  }
  output {
    File out_stdout = stdout()
  }
}