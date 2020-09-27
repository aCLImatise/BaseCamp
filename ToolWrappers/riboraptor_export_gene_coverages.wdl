version 1.0

task RiboraptorExportgenecoverages {
  input {
    File? bigwig
    File? region_bed
    File? save_to
    Int? offset_five_p
    Int? offset_three_p
    Boolean? ignore_tx_version
  }
  command <<<
    riboraptor export_gene_coverages \
      ~{if defined(bigwig) then ("--bigwig " +  '"' + bigwig + '"') else ""} \
      ~{if defined(region_bed) then ("--region_bed " +  '"' + region_bed + '"') else ""} \
      ~{if defined(save_to) then ("--saveto " +  '"' + save_to + '"') else ""} \
      ~{if defined(offset_five_p) then ("--offset_5p " +  '"' + offset_five_p + '"') else ""} \
      ~{if defined(offset_three_p) then ("--offset_3p " +  '"' + offset_three_p + '"') else ""} \
      ~{if (ignore_tx_version) then "--ignore_tx_version" else ""}
  >>>
  parameter_meta {
    bigwig: "Path to bigwig  [required]"
    region_bed: "Path to bed file  [required]"
    save_to: "Path to write gene coverages tsv file"
    offset_five_p: "Number of upstream bases to count(5')"
    offset_three_p: "Number of downstream bases to count(3')"
    ignore_tx_version: "Ignore version (.xyz) in gene names"
  }
  output {
    File out_stdout = stdout()
  }
}