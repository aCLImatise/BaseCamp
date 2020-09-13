version 1.0

task ReadDistributionpy {
  input {
    File? input_file
    String? ref_gene
    String qc_failed
    String unmapped
  }
  command <<<
    read_distribution_py \
      ~{qc_failed} \
      ~{unmapped} \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(ref_gene) then ("--refgene " +  '"' + ref_gene + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Alignment file in BAM or SAM format."
    ref_gene: "Reference gene model in bed format.\\n"
    qc_failed: "PCR duplicate"
    unmapped: "Non-primary (or secondary)      "
  }
  output {
    File out_stdout = stdout()
  }
}