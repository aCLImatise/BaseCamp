version 1.0

task ReadDistribution.py {
  input {
    String? input_file
    String? ref_gene
  }
  command <<<
    read_distribution.py \
      ~{if defined(input_file) then ("--input-file " +  '"' + input_file + '"') else ""} \
      ~{if defined(ref_gene) then ("--refgene " +  '"' + ref_gene + '"') else ""}
  >>>
  parameter_meta {
    input_file: "Alignment file in BAM or SAM format."
    ref_gene: "Reference gene model in bed format."
  }
}